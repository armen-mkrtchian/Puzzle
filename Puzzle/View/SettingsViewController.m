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
@synthesize soundSlider = _soundSlider;
@synthesize musicSlider = _musicSlider;
@synthesize procentOfSound = _procentOfSound;
@synthesize procentOfMusic = _procentOfMusic;

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
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    self.procentOfMusic.text = [userDefaults objectForKey:@"procMus"];
    self.procentOfSound.text = [userDefaults objectForKey:@"procSou"];
    
    self.musicSlider.value = [[userDefaults objectForKey:@"valMus"] intValue];
    self.soundSlider.value = [[userDefaults objectForKey:@"valSou"] intValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)doneBtnHandler:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}

- (IBAction)changeMusicSlider:(id)sender {
    NSString *procentMusic = [[NSString alloc] initWithFormat:@"%.0f",_musicSlider.value];
    _procentOfMusic.text = procentMusic;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:self.procentOfMusic.text forKey:@"procMus"];
    [userDefaults setInteger:self.musicSlider.value forKey:@"valMus"];
    [userDefaults synchronize];
    

}

- (IBAction)changeSoundSlider:(id)sender {
    NSString *procentSound = [[NSString alloc] initWithFormat:@"%.0f",_soundSlider.value];
    _procentOfSound.text = procentSound;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:self.procentOfSound.text forKey:@"procSou"];
    [userDefaults setInteger:self.soundSlider.value forKey:@"valSou"];
    [userDefaults synchronize];
}

- (void)dealloc {
    [_procentOfMusic release];
    [_procentOfSound release];
    [super dealloc];
}

- (void)viewDidUnload {
    [self setProcentOfMusic:nil];
    [self setProcentOfSound:nil];
    [super viewDidUnload];
}

@end
