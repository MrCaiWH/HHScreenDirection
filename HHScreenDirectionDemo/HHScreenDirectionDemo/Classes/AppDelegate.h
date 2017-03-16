//
//  AppDelegate.h
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

#pragma mark - 强制横屏
-(void)forceOrientationLandscape;

#pragma mark - 强制竖屏
-(void)forceOrientationPortrait;
@end

