//
//  EPLError.h
//  EPLCore
//
//  Created by Andrey Subbotin on 1/28/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EPLError : NSError {

}

- (id)initWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;
+ (id)errorWithDomain:(NSString *)domain code:(NSInteger)code userInfo:(NSDictionary *)dict;

#pragma mark - Primitive methods

+ (NSString *)domain;

#pragma mark - Derived methods

+ (NSError *)errorWithCode:(int)code descriptionWithFormat:(NSString *)format, ...;

@end
