//
//  EPLSingleton.h
//  EPLCore
//
//  Created by Andrey Subbotin on 1/10/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#define SYNTHESIZE_SINGLETON_DECL_FOR_CLASS_AND_MODULE(classname, modulename) \
    + (classname *)shared##modulename;

#define SYNTHESIZE_SINGLETON_IMPL_FOR_CLASS_AND_MODULE(classname, modulename) \
    static classname *shared##modulename = nil; \
    \
    + (classname *)shared##modulename { \
    	@synchronized(self) { \
    		if (shared##modulename == nil) { \
    			shared##modulename = [[self alloc] init]; \
	    	} \
    	} \
        \
    	return shared##modulename; \
    } \
     \
    + (id)allocWithZone:(NSZone *)zone { \
    	@synchronized(self) { \
    		if (shared##modulename == nil) { \
    			shared##modulename = [super allocWithZone:zone]; \
	    		return shared##modulename; \
		    } \
    	} \
        \
    	return nil; \
    } \
    \
    - (id)copyWithZone:(NSZone *)zone { \
    	return self; \
    } \
    \
    - (id)retain { \
    	return self; \
    } \
    \
    - (NSUInteger)retainCount { \
    	return NSUIntegerMax; \
    } \
    \
    - (oneway void)release { \
    } \
    \
    - (id)autorelease { \
    	return self; \
    }
