//
//  NSDate+EPLTimeAgoInWords.h
//
//  Created by Alexander Cherednikov on 10.11.09.
//  Copyright 2009 Mobile Platforms LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (KWTimeAgoInWords)

- (NSString *)timeAgoInWords;
- (NSString *)timeAgoInShortWords;

- (NSString *)ageInWords;
- (NSString *)ageInShortWords;

@end
