//
//  TNTestViewController.h
//  TNTabbar
//
//  Created by TaonanShen on 15/3/3.
//  Copyright (c) 2015年 Tenney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TNTestViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *switchBtn;

@property (strong, nonatomic) IBOutlet UILabel *titleLab;

- (IBAction)switch:(id)sender;

@end
