//
//  Board.h
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject {
    NSUInteger _rowsCount;
    NSUInteger _colsCount;
    NSMutableArray *_boardDesk;
}

- (Board *)initWithRows:(NSUInteger)rowsCount andColsCount:(NSUInteger)colsCount;

@end
