//
//  ViewController.h
//  TelesOfSunAndMoon
//
//  Created by kid chiu on 2015/7/19.
//  Copyright (c) 2015年 kidmac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)swap:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *sun;
@property (weak, nonatomic) IBOutlet UIButton *moon;
-(void) changScene;

@end

bool isDayLight;