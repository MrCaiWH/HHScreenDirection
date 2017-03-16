//
//  HHHomeVC.m
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#import "HHHomeVC.h"
#import "HHFirstVC.h"
#import "HHNavigationController.h"

@interface HHHomeVC ()

@end

@implementation HHHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置title
    self.title = @"Bookmarks";
}

- (IBAction)landscapeClick:(UIButton *)sender {
    HHFirstVC *firstVc = [[HHFirstVC alloc] init];
    HHNavigationController *nav = [[HHNavigationController alloc] initWithRootViewController:firstVc];
    [self.navigationController presentViewController:nav animated:YES completion:^{
        
    }];
}
@end
