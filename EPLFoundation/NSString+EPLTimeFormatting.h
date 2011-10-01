//
//  NSString+EPLTimeFormatting.h
//  EPLFoundation
//
//  Created by Andrey Subbotin on 10/2/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EPLTimeFormatting)

+ (NSString *)eplStringWithTimeInterval:(NSTimeInterval)interval;

@end
