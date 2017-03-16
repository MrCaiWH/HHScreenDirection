//
//  UIViewController+AutoRotate.m
//  Test3
//
//  Created by wyw on 16/10/13.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import "UIViewController+AutoRotate.h"
#import <AVKit/AVKit.h>


@implementation UIViewController (AutoRotate)

// 不支持自动屏幕旋转
- (BOOL)shouldAutorotate
{
    //NSLog(@"%@  shouldAutorotate  NO",[self class]);
    if([self isKindOfClass:[AVPlayerViewController class]])
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
}


@end
