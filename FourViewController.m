//
//  FourViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/8/15.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIView *aview = [[UIView alloc]initWithFrame:CGRectMake(100, 200, 200, 100)];
    [self.view addSubview:aview];
    
    [aview snapshotViewAfterScreenUpdates:YES];
    UIView *snapShotView = [aview resizableSnapshotViewFromRect:CGRectMake(50, 300, 200, 100) afterScreenUpdates:YES withCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    NSLog(@"===%@",snapShotView);
    
//    snapShotView.
    [self.view addSubview:snapShotView];
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
