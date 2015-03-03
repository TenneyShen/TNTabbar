//
//  UITabBar+badge.h
//  test
//
//  Created by TaonanShen on 15/2/9.
//  Copyright (c) 2015年 paopao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index;   //显示小红点

- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点


@end
