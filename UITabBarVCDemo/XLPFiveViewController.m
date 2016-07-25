//
//  XLPFiveViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPFiveViewController.h"

@interface XLPFiveViewController ()

@end

@implementation XLPFiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITabBar *theTabBar = [[UITabBar alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 49)];
    [self.view addSubview:theTabBar];
    theTabBar.barTintColor = [UIColor purpleColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
