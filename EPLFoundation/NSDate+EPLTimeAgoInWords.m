//
//  NSDate+EPLTimeAgoInWords.m
//
//  Created by Alexander Cherednikov on 10.11.09.
//  Copyright 2009 Mobile Platforms LLC. All rights reserved.
//

#import "NSDate+EPLTimeAgoInWords.h"

@implementation NSDate (KWTimeAgoInWords)

static const NSTimeInterval EPL_DATE_INTERVAL_SECOND = 1;
static const NSTimeInterval EPL_DATE_INTERVAL_MINUTE = 60;
static const NSTimeInterval EPL_DATE_INTERVAL_HOUR = 3600;
static const NSTimeInterval EPL_DATE_INTERVAL_DAY = 86400;
static const NSTimeInterval EPL_DATE_INTERVAL_WEEK = 604800;
static const NSTimeInterval EPL_DATE_INTERVAL_MONTH = 2592000;
static const NSTimeInterval EPL_DATE_INTERVAL_YEAR = 31536000;

- (NSString *)timeAgoInWords
{
	NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate] - [self timeIntervalSinceReferenceDate];
	
	if (interval < 1 * EPL_DATE_INTERVAL_MINUTE) {
		return NSLocalizedString(@"recently", @"time ago in words");
	}
    
	if (interval < 2 * EPL_DATE_INTERVAL_MINUTE) {
		return NSLocalizedString(@"a minute ago", @"time ago in words");
	}
    
	if (interval < 15 * EPL_DATE_INTERVAL_MINUTE) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d mins ago", @"time ago in words"), (int)(interval/EPL_DATE_INTERVAL_MINUTE)];
	}
    
	if (interval < 45 * EPL_DATE_INTERVAL_MINUTE) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d mins ago", @"time ago in words"), (((int)(interval/EPL_DATE_INTERVAL_MINUTE) + 5) / 5) * 5];
	}
    
	if (interval < 120 * EPL_DATE_INTERVAL_MINUTE) {
		return NSLocalizedString(@"an hour ago", @"time ago in words");
	}
    
	if (interval < 20 * EPL_DATE_INTERVAL_HOUR) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d hours ago", @"time ago in words"), (int)(interval/EPL_DATE_INTERVAL_HOUR)];
	}
    
	if (interval < 2 * EPL_DATE_INTERVAL_DAY) {
		return NSLocalizedString(@"a day ago", @"time ago in words");
	}
    
	if (interval < 21 * EPL_DATE_INTERVAL_DAY) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d days ago", @"time ago in words"), (int)(interval/EPL_DATE_INTERVAL_DAY)];
	}
    
	if (interval < 2 * EPL_DATE_INTERVAL_MONTH) {
		return NSLocalizedString(@"a month ago", @"time ago in words");
	}
    
	if (interval < 12 * EPL_DATE_INTERVAL_MONTH) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d months ago", @"time ago in words"), (int)(interval/EPL_DATE_INTERVAL_MONTH)];
	}
    
	if (interval < 2 * EPL_DATE_INTERVAL_YEAR) {
		return NSLocalizedString(@"a year ago", @"time ago in words");
	}
    
    return [NSString stringWithFormat:NSLocalizedString(@"%d years ago", @"time ago in words"), (int)(interval/EPL_DATE_INTERVAL_YEAR)];
}

- (NSString *)timeAgoInShortWords
{
	NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate] - [self timeIntervalSinceReferenceDate];
	
	if (interval < EPL_DATE_INTERVAL_DAY) {
		NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
		[dateFormatter setLocale:[NSLocale currentLocale]];
		[dateFormatter setDateStyle:NSDateFormatterNoStyle];
		[dateFormatter setTimeStyle:NSDateFormatterShortStyle];
		
		NSString *result = [dateFormatter stringFromDate:self];
		[dateFormatter release];
		return result;
	}
    
	if( interval < EPL_DATE_INTERVAL_WEEK ) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d d", @"short day word"), (int)(interval/EPL_DATE_INTERVAL_DAY)];
	}
    
	if (interval < EPL_DATE_INTERVAL_MONTH ) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d w", @"short week word"), (int)(interval/EPL_DATE_INTERVAL_WEEK)];
	}
    
	if (interval < EPL_DATE_INTERVAL_YEAR) {
		return [NSString stringWithFormat:NSLocalizedString(@"%d m", @"short month word"), (int)(interval/EPL_DATE_INTERVAL_MONTH)];
	}
    
    return [NSString stringWithFormat:NSLocalizedString(@"%d y", @"short year word"), (int)(interval/EPL_DATE_INTERVAL_YEAR)];
}
	
- (NSString *)ageInWords
{
	NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate] - [self timeIntervalSinceReferenceDate];
	
	if (interval < 2 * EPL_DATE_INTERVAL_YEAR) {
        return NSLocalizedString(@"1 year", @"age in words");        
    }

    return [NSString stringWithFormat:NSLocalizedString(@"%d years", @"age in words"), (int)(interval/EPL_DATE_INTERVAL_YEAR)];
}

- (NSString *)ageInShortWords
{
	NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate] - [self timeIntervalSinceReferenceDate];
	
	if (interval < 2 * EPL_DATE_INTERVAL_YEAR) {
        return NSLocalizedString(@"1 y", @"age in words");        
    }
    
    return [NSString stringWithFormat:NSLocalizedString(@"%d y", @"age in words"), (int)(interval/EPL_DATE_INTERVAL_YEAR)];
}

@end
