//
//  NSURL+Pieces.h
//  EPLFoundation
//
//  Created by Andrey Subbotin on 9/28/11.
//

#import <Foundation/Foundation.h>

//
// A method for debugging NSURLs to find where the different pieces of your URL are
// Source: https://gist.github.com/1243216
//

@interface NSURL (Pieces)

-(NSDictionary *)piecesDictionary;

@end
