//
//  EPLNull.h
//  EPLFoundation
//
//  Created by Andrey Subbotin on 9/23/11.
//  Copyright (c) 2011 Mobile Platforms LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

#define EPLNullToNil(value) ((value) == [NSNull null] ? nil : (value))
#define EPLNilToNull(value) ((value) == nil ? [NSNull null] : (value))
