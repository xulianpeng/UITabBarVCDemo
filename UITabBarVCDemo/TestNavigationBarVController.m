//
//  TestNavigationBarVController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/26.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "TestNavigationBarVController.h"
#import "TestTwoViewController.h"
@interface TestNavigationBarVController ()

@end

@implementation TestNavigationBarVController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.hidesBarsOnSwipe = YES;
    
    self.title = @"我要飞的很高非得很高啊狂风一样怒号挣脱怀抱非得更好非得很高啊狂风一样怒号挣脱怀";
//    UIBarButtonItem *leftBTItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backAction)];
//    self.navigationItem.leftBarButtonItem = leftBTItem;
    
//    UIButton *backBt = [UIButton buttonWithType:UIButtonTypeCustom];
//    backBt.frame = CGRectMake(0, 0, 40, 20);
////    [backBt setBackgroundImage:[UIImage imageNamed:@"回退"] forState:UIControlStateNormal];
//    [backBt setTitle:@"回退" forState:UIControlStateNormal];
//    [backBt setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
//    [backBt addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBt];
    self.navigationController.navigationBar.tintColor = [UIColor redColor];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    

    [UINavigationBar appearance].titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, nil];
//        [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blueColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 200, 200, 50);
    bt.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:bt];
    [bt addTarget:self action:@selector(pushVC:) forControlEvents:UIControlEventTouchUpInside];
  
}
- (void)backAction
{
    
}
- (void)pushVC:(UIButton *)BT
{
    
    TestTwoViewController *testVC = [[TestTwoViewController alloc]init];
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
