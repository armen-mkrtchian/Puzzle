//
//  Settings.m
//  GameSettings
//
//  Created by Hovsep Shakarayn on 08/06/2013.
//  Copyright (c) 2013 Hovsep Shakarayn. All rights reserved.
//

#import "Settings.h"

@implementation Settings
@synthesize soundLabel,soundSlider,musicLabel,musicSlider;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      //Title of Settings____________________________________________________________________
        
        UILabel *setingsLabel = [[UILabel alloc] initWithFrame:CGRectMake(95, 50, 128, 30)];
        setingsLabel.text = @"SETTINGS";
        UIFont *font = [UIFont fontWithName:@"Helvetica-Bold" size:25.0];
        setingsLabel.font = font;
        [self addSubview:setingsLabel];
      //_____________________________________________________________________________________
  
      //Music Title and Slider_______________________________________________________________
        
        //Title
         self.musicLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 110, 60, 20)];
         self.musicLabel.text = @"Music";
        [self addSubview:self.musicLabel];
        
        //Slider
        self.musicSlider = [[UISlider alloc] initWithFrame:CGRectMake(130, 110, 150, 25)];
        self.musicSlider.minimumValue = 0;
        self.musicSlider.maximumValue = 100;
        self.musicSlider.value = 25;
       [self.musicSlider setContinuous:false];
       [self addSubview:musicSlider];
     //______________________________________________________________________________________

     //Game Sound Title and Slider___________________________________________________________
        
        //Title
        self.soundLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 170, 60, 20)];
        self.soundLabel.text = @"Sound";
        [self addSubview:self.soundLabel];
        
        //Slider
        self.soundSlider = [[UISlider alloc] initWithFrame:CGRectMake(130, 170, 150, 25)];
        self.soundSlider.minimumValue = 0;
        self.soundSlider.maximumValue = 100;
        self.soundSlider.value = 25;
        [self.soundSlider setContinuous:false];
        [self addSubview:soundSlider];
      
    //_______________________________________________________________________________________
        
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

@end
