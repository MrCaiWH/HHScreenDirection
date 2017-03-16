//
//  HHNavigationController.m
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import "HHNavigationController.h"

@interface HHNavigationController ()

@end

@implementation HHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 重写导航控制器的push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    // 当这个控制器被push的时候, 把底部的TabBar隐藏掉。
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    // 必须调用一下父类的push方法, 才会进行push
    [super pushViewController:viewController animated:animated];
}
@end
