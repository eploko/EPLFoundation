//
//  NSString+EPLTimeFormatting.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 10/2/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import "NSString+EPLTimeFormatting.h"

@implementation NSString (EPLTimeFormatting)

+ (NSString *)eplStringWithTimeInterval:(NSTimeInterval)interval
{
    BOOL negative = interval < 0.0;
    if (negative) {
        interval = -interval;
    }
    
    NSUInteger hours = floor(interval / 3600.0);
    NSUInteger minutes = floor((interval - hours * 3600.0) / 60.0);
    NSUInteger seconds = round(interval - hours * 3600.0 - minutes * 60.0);    
    
    NSMutableString *result = [NSMutableString stringWithCapacity:9];
    
    if (negative) {
        [result appendString:@"–"];
    }
    
    NSString *minutesFormat = @"%lu:";
    
    if (hours > 0) {
        [result appendFormat:@"%lu:", hours];
        minutesFormat = @"%02lu:";
    }

    [result appendFormat:minutesFormat, minutes];
    [result appendFormat:@"%02lu", seconds];
    
    return result;
}

@end
