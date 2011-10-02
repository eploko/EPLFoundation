//
//  EPLTimeIntervalFormatter.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 10/2/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import "EPLTimeIntervalFormatter.h"

@implementation EPLTimeIntervalFormatter

- (NSString *)stringForObjectValue:(id)anObject
{
    // The time interval 
    NSTimeInterval theTimeInterval = [anObject doubleValue];
    
    BOOL negative = theTimeInterval < 0.0;
    if (negative) {
        theTimeInterval = -theTimeInterval;
    }
    
    // Get the system calendar
    NSCalendar *sysCalendar = [NSCalendar currentCalendar];
    
    // Create the NSDates
    NSDate *date1 = [[NSDate alloc] init];
    NSDate *date2 = [[NSDate alloc] initWithTimeInterval:theTimeInterval sinceDate:date1]; 
    
    // Get conversion to hours, minutes, seconds
    unsigned int unitFlags = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    NSDateComponents *conversionInfo = [sysCalendar components:unitFlags fromDate:date1  toDate:date2  options:0];
    
    [date1 release];
    [date2 release];
    
    NSMutableString *result = [NSMutableString stringWithCapacity:9];
    
    if (negative) {
        [result appendString:@"–"];
    }
    
    NSString *minutesFormat = @"%ld:";
    
    if ([conversionInfo hour] > 0) {
        [result appendFormat:@"%ld:", [conversionInfo hour]];
        minutesFormat = @"%02ld:";
    }
    
    [result appendFormat:minutesFormat, [conversionInfo minute]];
    [result appendFormat:@"%02ld", [conversionInfo second]];
    
    return result;
}

- (BOOL)getObjectValue:(id *)anObject forString:(NSString *)string errorDescription:(NSString **)error
{
    return NO;
}

@end
