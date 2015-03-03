//
//  UITabBar+badge.m
//  test
//
//  Created by TaonanShen on 15/2/9.
//  Copyright (c) 2015年 paopao. All rights reserved.
//

#import "UITabBar+badge.h"

#warning 此处更改tabbar数量

#define TabbarItemNums 4.0    //tabbar的数量


@implementation UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index{
    
    [self removeBadgeOnItemIndex:index];

    UIView *badgeView = [[UIView alloc]init];
    
    badgeView.tag = 888 + index;
    
    badgeView.layer.cornerRadius = 5;
    
    badgeView.backgroundColor = [UIColor redColor];
    
    CGRect tabFrame = self.frame;
    
    float percentX = (index +0.6) / TabbarItemNums;
    
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    
    badgeView.frame = CGRectMake(x, y, 10, 10);
    
    [self addSubview:badgeView];
    
}

- (void)hideBadgeOnItemIndex:(int)index{
    
    [self removeBadgeOnItemIndex:index];
    
}

- (void)removeBadgeOnItemIndex:(int)index{
    
    for (UIView *subView in self.subviews) {
        
        if (subView.tag == 888+index) {
            
            [subView removeFromSuperview];
            
        }
    }
}

@end
