//
//  SettingsViewController.m
//  Puzzle
//
//  Created by Armen Mkrtchyan on 19/06/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneBtnHandler:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
@end
