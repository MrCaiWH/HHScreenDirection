//
//  HHFirstVC.m
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import "HHFirstVC.h"

@interface HHFirstVC ()

@end

@implementation HHFirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = YES;
}

//支持的方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeRight;
}

//是否可以旋转
-(BOOL)shouldAutorotate
{
    return YES;
}

@end
