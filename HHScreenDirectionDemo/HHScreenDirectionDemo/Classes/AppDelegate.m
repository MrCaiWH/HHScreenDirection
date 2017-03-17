//
//  AppDelegate.m
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import "AppDelegate.h"
#import "HHTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.isForcePortrait = YES;
    self.isForceLandscape = NO;
    
    //1.创建Window
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     self.window.backgroundColor = [UIColor whiteColor];

     //a.初始化一个tabBar控制器
     HHTabBarController *tb = [[HHTabBarController alloc] init];
     //设置控制器为Window的根控制器
     self.window.rootViewController = tb;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


//ios 强制设置横屏
-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    if (self.isForceLandscape)
    {
        return UIInterfaceOrientationMaskLandscape;
    }
    else if (self.isForcePortrait)
    {
        return UIInterfaceOrientationMaskPortrait;
    }
    return UIInterfaceOrientationMaskPortrait;
}

@end
