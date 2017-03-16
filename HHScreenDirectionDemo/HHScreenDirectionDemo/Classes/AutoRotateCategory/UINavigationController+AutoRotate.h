//
//  UINavigationController+AutoRotate.h
//  Test3
//
//  Created by wyw on 16/10/13.
//  Copyright © 2016年 weiyanwu All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (AutoRotate)

-(BOOL)shouldAutorotate;

- (NSUInteger)supportedInterfaceOrientations;

@end
