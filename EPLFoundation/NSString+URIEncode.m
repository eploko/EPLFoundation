//
//  NSString+URIEncode.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 9/6/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import "NSString+URIEncode.h"

@implementation NSString (URIEncode)

- (NSString *)stringByURIEncoding
{
    NSString *result = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8); 
    return result;
}

@end
