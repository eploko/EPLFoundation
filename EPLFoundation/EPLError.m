//
//  EPLError.m
//  EPLCore
//
//  Created by Andrey Subbotin on 1/28/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import "EPLError.h"


@implementation EPLError

- (id)initWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict 
{
    if ((self = [super initWithDomain:domain code:code userInfo:dict])) {
        
    }
    return self;
}

+ (id)errorWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict 
{
    return [[[self alloc] initWithDomain:domain code:code userInfo:dict] autorelease];
}

#pragma mark Primitive methods

+ (NSString *)domain 
{
    return @"com.plokodelika.EPLKit.EPLCore";
}

#pragma mark Derived methods

+ (NSError *)errorWithCode:(int)code descriptionWithFormat:(NSString *)format, ...
{
    va_list ap;
    va_start(ap, format);
    NSString *description = [NSString stringWithFormat:format, ap];
    va_end(ap);
    
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:description
                                                         forKey:NSLocalizedDescriptionKey];
    NSError *error = [self errorWithDomain:[self domain]
                                      code:code
                                  userInfo:userInfo];        
    return error;
}

@end
