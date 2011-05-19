//
//  NSString+IsEmpty.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 5/19/11.
//  Copyright 2011 Plokodelika. All rights reserved.
//

#import "NSString+IsEmpty.h"


@implementation NSString (IsEmpty)

- (BOOL)isEmpty
{
    return ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0);
}

@end
