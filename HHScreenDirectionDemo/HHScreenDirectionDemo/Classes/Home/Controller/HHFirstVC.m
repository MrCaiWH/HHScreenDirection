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
    
    [self forceOrientationLandscape:NO];
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self forceOrientationLandscape:YES];
}

#pragma mark - 强制横屏 竖屏
-(void)forceOrientationLandscape:(BOOL)boolean{
    
    AppDelegate *appDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    appDelegate.isForcePortrait = boolean;
    appDelegate.isForceLandscape = !boolean;    //是否强制横屏
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val;
        if(!boolean){
            val = UIInterfaceOrientationLandscapeRight;
        }else{
            val = UIInterfaceOrientationPortrait;
        }
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
    
    [appDelegate application:[UIApplication sharedApplication]  supportedInterfaceOrientationsForWindow:self.view.window];
}

@end
