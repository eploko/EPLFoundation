//
//  NSString+EPLUUID.h
//  EPLCore
//
//  Created by Andrey Subbotin on 1/22/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (EPLUUID)

/**
 * Generates and returns a new autoreleased UUID.
 * UUIDs (Universally Unique Identifiers) may also be known as GUIDs (Globally Unique Identifiers).
 * 
 * The UUID is generated using the CFUUID library, which generates a unique 128 bit value.
 * The uuid is then translated into a string using the standard format for UUIDs:
 * "68753A44-4D6F-1226-9C60-0050E4C00067"
 * 
 * This method is most commonly used to generate a unique id value for an xmpp element.
 **/
+ (NSString *)generateUUID;

@end
