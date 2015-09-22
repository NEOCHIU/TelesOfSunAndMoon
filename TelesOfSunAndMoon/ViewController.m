//
//  ViewController.m
//  TelesOfSunAndMoon
//
//  Created by kid chiu on 2015/7/19.
//  Copyright (c) 2015年 kidmac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    isDayLight = true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swap:(id)sender {
    [self changScene];
}

-(void) changScene{
    CGPoint centerOfSun = self.sun.center;
    CGPoint centerOfMoon = self.moon.center;
    [UIView animateWithDuration:3.0 animations:^(void){
        if (isDayLight) {
            self.sun.center = centerOfMoon;
            self.moon.center = centerOfSun;
            [self.view setBackgroundColor:[UIColor whiteColor]];
            isDayLight = false;
        }else{
            self.sun.center = centerOfMoon;
            self.moon.center = centerOfSun;
            [self.view setBackgroundColor:[UIColor blueColor]];
            isDayLight = true;
        }
    }];
    
    
    
}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (event.type ==UIEventSubtypeMotionShake){
        [self performSelector:@selector(changScene)];
        
    }
}

-(BOOL)canBecomFirstResponder {
    return YES;
    
}
@end
