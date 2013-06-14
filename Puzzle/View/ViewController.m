//
//  ViewController.m
//  Puzzle
//
//  Created by Artak A. Saroyan on 5/31/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)levelSelectBtnHandler:(id)sender {
    NSLog(@"levelSelectBtnHandler: Implement your code here. Load view here");
//    Example ov laoding viewController
//    LevelSelectViewController *levelSelectVC = [[LevelSelectViewController alloc] init];
//    or you can load it with nib file
//    LevelSelectViewController *levelSelectVC = [[[LevelSelectViewController alloc] initWithNibName:@"LevelSelectViewController_iPhone" bundle:nil] 
}

- (IBAction)highscoreBtnHandler:(id)sender {
    NSLog(@"highscoreBtnHandler: Implement your code here");
}

- (IBAction)settingsBtnHandler:(id)sender {
    NSLog(@"settingsBtnHandler: Implement your code here");
}

- (IBAction)helpBtnHandler:(id)sender {
    NSLog(@"helpBtnHandler: Implement your code here");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
