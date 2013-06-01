//
//  Cell.m
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import "Cell.h"

@implementation Cell
- (void)dealloc {
    [_tile release];
    
    [super dealloc];
}
@end
