//
//  XLPThreeViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPThreeViewController.h"
#import "TestNavigationBarVController.h"
@interface XLPThreeViewController ()

@end

@implementation XLPThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"three";
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 200, 200, 50);
    bt.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:bt];
    [bt addTarget:self action:@selector(pushVC:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pushVC:(UIButton *)BT
{

    TestNavigationBarVController *testVC = [[TestNavigationBarVController alloc]init];
    testVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testVC animated:YES];
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
