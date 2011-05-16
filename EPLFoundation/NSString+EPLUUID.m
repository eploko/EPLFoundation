//
//  NSString+EPLUUID.m
//  EPLCore
//
//  Created by Andrey Subbotin on 1/22/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import "NSString+EPLUUID.h"


@implementation NSString (EPLUUID)

+ (NSString *)generateUUID {
	NSString *result = nil;
	
	CFUUIDRef uuid = CFUUIDCreate(NULL);
	if (uuid)
	{
		result = NSMakeCollectable(CFUUIDCreateString(NULL, uuid));
		CFRelease(uuid);
	}
	
	return [result autorelease];    
}

@end
