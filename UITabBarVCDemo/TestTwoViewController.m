//
//  TestTwoViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/27.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "TestTwoViewController.h"

@interface TestTwoViewController ()

@end

@implementation TestTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *backBt = [UIButton buttonWithType:UIButtonTypeSystem];
    backBt.frame = CGRectMake(0, 0, 20, 20);
    [backBt setBackgroundImage:[UIImage imageNamed:@"backIcon"] forState:UIControlStateNormal];
    [backBt addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBt];

}
- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
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
