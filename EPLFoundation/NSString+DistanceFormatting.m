//
//  NSString+DistanceFormatting.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 5/21/11.
//  Copyright 2011 Plokodelika. All rights reserved.
//

#import "NSString+DistanceFormatting.h"


@implementation NSString (DistanceFormatting)

#define METERS_TO_FEET  3.2808399
#define METERS_TO_MILES 0.000621371192
#define METERS_CUTOFF   1000
#define FEET_CUTOFF     3281
#define FEET_IN_MILES   5280

+ (NSString *)stringWithDistance:(double)distance 
{
    BOOL isMetric = [[[NSLocale currentLocale] objectForKey:NSLocaleUsesMetricSystem] boolValue];
    
    NSString *format;
    
    if (isMetric) {
        if (distance < METERS_CUTOFF) {
            format = @"%@m";
        } else {
            format = @"%@km";
            distance = distance / 1000;
        }
    } else { // assume Imperial / U.S.
        distance = distance * METERS_TO_FEET;
        if (distance < FEET_CUTOFF) {
            format = @"%@ft";
        } else {
            format = @"%@mi";
            distance = distance / FEET_IN_MILES;
        }
    }
    
    return [NSString stringWithFormat:format, [NSString stringWithDoubleLocalized:distance]];
}

// Return a string of the number to one decimal place and with commas & periods based on the locale.
+ (NSString *)stringWithDoubleLocalized:(double)value 
{
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setLocale:[NSLocale currentLocale]];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [numberFormatter setMaximumFractionDigits:1];
    NSString *result = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:value]];
    [numberFormatter release];
    return result;
}

@end
