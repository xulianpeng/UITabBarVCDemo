//
//  XLPBaseNavigationViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/27.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPBaseNavigationViewController.h"

@interface XLPBaseNavigationViewController ()<UIGestureRecognizerDelegate>

@end

@implementation XLPBaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.hidesBarsOnSwipe = YES;
//    self.toolbarHidden = NO;
    self.hidesBottomBarWhenPushed = YES;
    self.interactivePopGestureRecognizer.delegate =  self;

}
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.viewControllers.count <= 1 ) {
        return NO;
    }
    
    return YES;
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
