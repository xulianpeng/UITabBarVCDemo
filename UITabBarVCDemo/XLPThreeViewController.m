//
//  XLPThreeViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPThreeViewController.h"
#import "TestNavigationBarVController.h"
//#import "UIButton+disableTime.h"
@interface UIButton (extension)


@end
@interface XLPThreeViewController ()

@end

@implementation XLPThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeCustom];
    bt1.frame = CGRectMake(100, 100, 200, 50);
    bt1.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:bt1];
    NSLog(@"init===%lu",bt1.state);
    [bt1 addTarget:self action:@selector(testTheStateDown:) forControlEvents:UIControlEventTouchDown];
    
    [bt1 addTarget:self action:@selector(testTheStateUp:) forControlEvents:UIControlEventTouchUpOutside|UIControlEventTouchUpInside];
    [bt1 addTarget:self action:@selector(testCancel:) forControlEvents:UIControlEventTouchCancel];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 200, 200, 50);
    bt.backgroundColor = [UIColor redColor];
    [bt addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
//    bt.xlp_ignore = NO;
//    bt.xlp_disableTime = 2;
    [self.view addSubview:bt];
}
- (void)pushVC
{

    TestNavigationBarVController *testVC = [[TestNavigationBarVController alloc]init];
    testVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:testVC animated:YES];
}
- (void)testTheStateDown:(UIButton *)bt
{
    NSLog(@"down=====%lu",(unsigned long)bt.state);
}
- (void)testTheStateUp:(UIButton *)bt
{
    NSLog(@"up=======%lu",(unsigned long)bt.state);
}
- (void)testCancel:(UIButton *)bt
{
    NSLog(@"cancel=====%lu",(unsigned long)bt.state);
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
