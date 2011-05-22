//
//  NSString+DistanceFormatting.h
//  EPLFoundation
//
//  Created by Andrey Subbotin on 5/21/11.
//  Copyright 2011 Plokodelika. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (DistanceFormatting)

+ (NSString *)stringWithDistance:(double)distance;
+ (NSString *)stringWithDoubleLocalized:(double)value;

@end
