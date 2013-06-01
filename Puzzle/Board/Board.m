//
//  Board.m
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import "Board.h"
#import "Cell.h"
#import "Tile.h"

@interface Board()
- (void)buildBoard;
- (Cell *)getCellAtRow:(NSInteger)row andCol:(NSInteger)col;

- (void)fallDown;
@end

@implementation Board

- (Board *)initWithRows:(NSUInteger)rowsCount andColsCount:(NSUInteger)colsCount {
    self = [super init];
    if (self) {
        _rowsCount = rowsCount;
        _colsCount = colsCount;
        [self buildBoard];
    }
    
    return self;
}

- (void)buildBoard {
    _boardDesk = [NSMutableArray new];
    for (uint row = 0; row < _rowsCount; row ++) {
        NSMutableArray *column = [NSMutableArray new];
        for (uint col = 0; col < _colsCount; col++) {
            Cell *cell = [Cell new];
            cell.col = col;
            cell.row = row;
            cell.tile = nil;
            [column addObject:cell];
            [cell release];
        }
        [_boardDesk addObject:column];
        [column release];
    }
}

- (void)fallDown {
    for (int row = _rowsCount - 1; row > 0 ; row--) {
        for (uint col = 0; col < _colsCount; col++) {
            Cell *upperCell = [self getCellAtRow:row - 1 andCol:col];
            Cell *lowerCell = [self getCellAtRow:row andCol:col];
            [self moveDownFromCell:upperCell toCell:lowerCell];
        }
    }
    
    [self placeNewTiles];
}

- (Cell *)getCellAtRow:(NSInteger)row andCol:(NSInteger)col {
    Cell *cell = [[_boardDesk objectAtIndex:row] objectAtIndex:col];
    return cell;
}

- (void)moveDownFromCell:(Cell *)from toCell:(Cell *)to {
    if (to.row == _rowsCount - 1) {
        [to.tile removeFromBoard]; // to further remove the view
        [to.tile release];
        to.tile = nil;
    }
    
    to.tile = from.tile;
    to.tile.row = to.row;
    to.tile.col = to.col;
    [to.tile tileMoved]; // to further update the view
    
    if (from.row == 0) {
        from.tile = nil;
    }
}

- (void)placeNewTiles {
    
}

- (void)dealloc {
    [_boardDesk release];
    
    [super dealloc];
}

@end
