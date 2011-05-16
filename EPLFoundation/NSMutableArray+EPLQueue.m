//
//  NSMutableArray+EPLQueue.m
//  karizma
//
//  Created by Andrey Subbotin on 2/10/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import "NSMutableArray+EPLQueue.h"


@implementation NSMutableArray (EPLQueue)

// Queues are first-in-first-out, so we remove objects from the head
- (id)dequeue {
    // if ([self count] == 0) return nil; // to avoid raising exception (Quinn)
    id headObject = [self objectAtIndex:0];
    if (headObject != nil) {
        [[headObject retain] autorelease]; // so it isn't dealloc'ed on remove
        [self removeObjectAtIndex:0];
    }
    return headObject;
}

// Add to the tail of the queue (no one likes it when people cut in line!)
- (void)enqueue:(id)anObject {
    // this method automatically adds to the end of the array
    [self addObject:anObject];
}

@end
