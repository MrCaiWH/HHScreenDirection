//
//  HHTabBarController.m
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import "HHTabBarController.h"
#import "HHHomeVC.h"
#import "HHPersonalVC.h"

@interface HHTabBarController ()

@end

@implementation HHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 执行加载控制器
    [self loadViewControllers];
}

- (void)loadViewControllers {
    // 1.新建第一页视图控制器实例
    HHHomeVC *firstVC = [[HHHomeVC alloc] init];
    // 2.新建第一页导航控制器实例，把firstVC加入进去
    UINavigationController *firstNC = [[UINavigationController alloc] initWithRootViewController:firstVC];
    // 3.新建第一页的标签栏图标
    UITabBarItem *firstTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    // 4.图标加入到第一页的导航控制器上
    firstNC.tabBarItem = firstTabBarItem;
    
    // 第二页
    HHPersonalVC *secondVC = [[HHPersonalVC alloc] init];
    UINavigationController *secondNC = [[UINavigationController alloc] initWithRootViewController:secondVC];
    UITabBarItem *secondTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    secondNC.tabBarItem = secondTabBarItem;
    
    // 5.新建一个导航控制器实例的数组
    NSArray *controllersArray = @[firstNC, secondNC];
    // 6.把导航控制器的数组加入到标签控制器
    [self setViewControllers:controllersArray animated:YES];
    
    //设置标签栏文字和图片的颜色
    self.tabBar.tintColor = [UIColor orangeColor];
}

@end
