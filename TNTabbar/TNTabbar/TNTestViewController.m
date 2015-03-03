//
//  TNTestViewController.m
//  TNTabbar
//
//  Created by TaonanShen on 15/3/3.
//  Copyright (c) 2015年 Tenney. All rights reserved.
//

#import "TNTestViewController.h"
#import "UITabBar+badge.h"
@interface TNTestViewController ()
{
    BOOL _isSwitchOn;
}
@end

@implementation TNTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLab.text = [NSString stringWithFormat:@"界面%ld",self.tabBarItem.tag - 888];
    _isSwitchOn = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)switch:(id)sender {
    
    int tabbarIndex = (int)self.tabBarItem.tag - 888;
    
    if (_isSwitchOn){
        [self.tabBarController.tabBar hideBadgeOnItemIndex:tabbarIndex];
        [self.switchBtn setTitle:@"开启红点"
                        forState:UIControlStateNormal];
    }
    else{
        [self.tabBarController.tabBar showBadgeOnItemIndex:tabbarIndex];
        [self.switchBtn setTitle:@"关闭红点"
                        forState:UIControlStateNormal];
    }
    
    
    _isSwitchOn = !_isSwitchOn;
    
}
@end
