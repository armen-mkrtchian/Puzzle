//
//  BoardView.m
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import "BoardView.h"
#import "Coord.h"

@interface BoardView()
- (Coord *)convertToLogical:(CGPoint)touchPoint;
@end

@implementation BoardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint physCoords = [touch locationInView:self];
    Coord *logicCoords = [self convertToLogical:physCoords];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint physCoords = [touch locationInView:self];
    Coord *logicCoords = [self convertToLogical:physCoords];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

- (Coord *)convertToLogical:(CGPoint)touchPoint {
    
}

- (void) dealloc {
    [_board release];
    
    [super dealloc];
}

@end
