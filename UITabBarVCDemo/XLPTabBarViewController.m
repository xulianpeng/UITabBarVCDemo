
//
//  XLPTabBarViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPTabBarViewController.h"

#import "XLPOneViewController.h"
#import "XLPTwoViewController.h"
#import "XLPThreeViewController.h"
#import "XLPFourViewController.h"
#import "XLPFiveViewController.h"
@interface XLPTabBarViewController ()
{
    XLPOneViewController *_oneVC;
    XLPTwoViewController *_twoVC;
    XLPThreeViewController *_threeVC;
    XLPFourViewController *_fourVC;
    XLPFiveViewController *_fiveVC;

    
}
@end

@implementation XLPTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _oneVC = [[XLPOneViewController alloc]init];
    _twoVC = [[XLPTwoViewController alloc]init];
    _threeVC = [[XLPThreeViewController alloc]init];
    _fourVC = [[XLPFourViewController alloc]init];
    _fiveVC = [[XLPFiveViewController alloc]init];
    
    _oneVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_news"];
    _oneVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_news2"];
    _oneVC.tabBarItem.title = @"新闻";
    
    _twoVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_tool"];
    _twoVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_tool2"];
    _twoVC.tabBarItem.title = @"工具";
    
    _threeVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_shop"];
    _threeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_shop2"];
    _threeVC.tabBarItem.title = @"商城";
    
    _fourVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_forum"];
    _fourVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_forum2"];
    _fourVC.tabBarItem.title = @"论坛";
    
    /**
     *  通过这种方式 设置image 点击时保持其原始颜色.
     */
    UIImage * image = [UIImage imageNamed:@"tabBar_find"];
    UIImage * selectImage = [UIImage imageNamed:@"tabBar_find2"];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *lastTabBarItem = [[UITabBarItem alloc]init];
    lastTabBarItem.image = image;
    lastTabBarItem.selectedImage = selectImage;
    lastTabBarItem.title = @"发现";
    _fiveVC.tabBarItem = lastTabBarItem;
    
    /**
     *  设置title的颜色 而不是默认的颜色
     */
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blueColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
    self.viewControllers = @[_oneVC,_twoVC,_threeVC,_fourVC,_fiveVC];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
