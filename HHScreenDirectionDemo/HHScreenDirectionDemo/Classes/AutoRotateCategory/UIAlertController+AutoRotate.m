//
//  UIAlertController+AutoRotate.m
//  Test3
//
//  Created by wyw on 16/10/13.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import "UIAlertController+AutoRotate.h"

@implementation UIAlertController (AutoRotate)

// 不支持自动屏幕旋转
- (BOOL)shouldAutorotate
{
    //NSLog(@"%@  shouldAutorotate  NO",[self class]);
    return NO;
}


@end
