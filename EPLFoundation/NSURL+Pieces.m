//
//  NSURL+Pieces.m
//  EPLFoundation
//
//  Created by Andrey Subbotin on 9/28/11.
//

#import "NSURL+Pieces.h"

@implementation NSURL (Pieces)

-(NSDictionary *)piecesDictionary{
	NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
#define AddValueForSelector(__selector) do{ id obj = [self performSelector:NSSelectorFromString(__selector)]; if(obj) [dictionary setObject:obj forKey:__selector]; }while(0)
	AddValueForSelector(@"absoluteString");
	AddValueForSelector(@"absoluteURL");
	AddValueForSelector(@"baseURL");
	AddValueForSelector(@"fragment");
	AddValueForSelector(@"host");
	AddValueForSelector(@"lastPathComponent");
	AddValueForSelector(@"parameterString");
	AddValueForSelector(@"password");
	AddValueForSelector(@"path");
	AddValueForSelector(@"pathComponents");
	AddValueForSelector(@"pathExtension");
	AddValueForSelector(@"port");
	AddValueForSelector(@"query");
	AddValueForSelector(@"relativePath");
	AddValueForSelector(@"relativeString");
	AddValueForSelector(@"resourceSpecifier");
	AddValueForSelector(@"scheme");
	AddValueForSelector(@"standardizedURL");
	AddValueForSelector(@"user");
#undef AddValueForSelector
	return dictionary;
}

@end
