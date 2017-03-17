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

@property(nonatomic,assign) BOOL isForceLandscape;     //是否强制横屏
@property(nonatomic,assign) BOOL isForcePortrait;     //是否强制竖屏

@end

