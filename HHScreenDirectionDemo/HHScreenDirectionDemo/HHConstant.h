//
//  HHConstant.h
//  HHScreenDirectionDemo
//
//  Created by zero on 2017/3/16.
//  Copyright © 2017年 Zerotech. All rights reserved.
//

#ifndef HHConstant_h
#define HHConstant_h

//竖屏界面宽
#define HHSCREEN_VERTICAL_WIDTH  MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
//竖屏界面高
#define HHSCREEN_VERTICAL_HEIGHT MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
//横屏界面宽
#define HHSCREEN_HORIZONTAL_WIDTH  MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
//横屏界面高
#define HHSCREEN_HORIZONTAL_HEIGHT MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)


#endif /* HHConstant_h */
