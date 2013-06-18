//
//  ViewController.m
//  GameSettings
//
//  Created by Hovsep Shakarayn on 08/06/2013.
//  Copyright (c) 2013 Hovsep Shakarayn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Settings *setting = [[Settings alloc] initWithFrame:CGRectMake(0, 0, 320, 548)];
    [self.view addSubview:setting];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
