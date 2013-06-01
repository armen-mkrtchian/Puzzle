//
//  Tile.h
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tile : NSObject
@property (nonatomic, assign) NSUInteger row;
@property (nonatomic, assign) NSUInteger col;

- (void)removeFromBoard;
- (void)tileMoved;
@end
