//
//  NSString+EPLHTMLEntities.h
//  EPLFoundation
//
//  Created by Andrey Subbotin on 10/23/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (EPLHTMLEntities)

- (NSString *)epl_stringByDecodingXMLEntities;

@end
