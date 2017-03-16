//
//  UINavigationController+AutoRotate.m
//  Test3
//
//  Created by wyw on 16/10/13.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import "UINavigationController+AutoRotate.h"

@implementation UINavigationController (AutoRotate)

- (BOOL)shouldAutorotate
{
    //NSLog(@"UINavigationController shouldAutorotate");
    return [self.topViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
    //NSLog(@"UINavigationController supportedInterfaceOrientations");
    return [self.topViewController supportedInterfaceOrientations];
}

@end
