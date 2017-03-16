//
//  UITabBarController+AutoRotate.m
//  Test3
//
//  Created by wyw on 16/10/13.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import "UITabBarController+AutoRotate.h"


@implementation UITabBarController (AutoRotate)


- (BOOL)shouldAutorotate
{
    return [self.selectedViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
