//
//  SettingsViewController.h
//  Puzzle
//
//  Created by Armen Mkrtchyan on 19/06/13.
//  Copyright (c) 2013 Artak A. Saroyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (nonatomic,strong)IBOutlet UISlider *soundSlider;
@property (nonatomic,retain)IBOutlet UISlider *musicSlider;
@property (nonatomic,strong)IBOutlet UILabel *soundLabel;
@property (nonatomic,strong)IBOutlet UILabel *musicLabel;
@property (retain, nonatomic) IBOutlet UILabel *procentOfMusic;
@property (retain, nonatomic) IBOutlet UILabel *procentOfSound;

- (IBAction)doneBtnHandler:(id)sender;
- (IBAction)changeMusicSlider:(id)sender;
- (IBAction)changeSoundSlider:(id)sender;

@end
