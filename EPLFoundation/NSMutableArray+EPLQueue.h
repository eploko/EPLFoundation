//
//  NSMutableArray+EPLQueue.h
//  karizma
//
//  Created by Andrey Subbotin on 2/10/11.
//  Copyright 2011 Andrey Subbotin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSMutableArray (EPLQueue)

- (id)dequeue;
- (void)enqueue:(id)obj;

@end
