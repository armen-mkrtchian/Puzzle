//
//  Settings.h
//  GameSettings
//
//  Created by Hovsep Shakarayn on 08/06/2013.
//  Copyright (c) 2013 Hovsep Shakarayn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Settings : UIView

@property (nonatomic,strong)IBOutlet UISlider *soundSlider;
@property (nonatomic,retain)IBOutlet UISlider *musicSlider;
@property (nonatomic,strong)IBOutlet UILabel *soundLabel;
@property (nonatomic,strong)IBOutlet UILabel *musicLabel;

@end
