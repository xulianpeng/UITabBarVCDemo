
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
    
    self.viewControllers = @[_oneVC,_twoVC,_threeVC,_fourVC,_fiveVC];
    
    
//    _oneVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_news"];
//    _oneVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_news2"];
//    _oneVC.tabBarItem.title = @"新闻";
//    
//    _twoVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_tool"];
//    _twoVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_tool2"];
//    _twoVC.tabBarItem.title = @"工具";
//    
//    _threeVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_shop"];
//    _threeVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_shop2"];
//    _threeVC.tabBarItem.title = @"商城";
//    
//    _fourVC.tabBarItem.image = [UIImage imageNamed:@"tabBar_forum"];
//    _fourVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_forum2"];
//    _fourVC.tabBarItem.title = @"论坛";
    
    /**
     *  通过这种方式 设置image 点击时保持其原始颜色.
     */
//    UIImage * image = [UIImage imageNamed:@"tabBar_find"];
//    UIImage * selectImage = [UIImage imageNamed:@"tabBar_find2"];
//    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UITabBarItem *lastTabBarItem = [[UITabBarItem alloc]init];
//    lastTabBarItem.image = image;
//    lastTabBarItem.selectedImage = selectImage;
//    lastTabBarItem.title = @"发现";
//    _fiveVC.tabBarItem = lastTabBarItem;
    
    /**
     *  设置title的颜色 而不是默认的颜色
     */
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blueColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
    
   //=========  华丽的分割线==============
    
    /**
     *  方法二
     *  图片要适当的放大  大概88 * 88 左右 这样的话 颜色样式 随心所欲
     *
     */
    [self customeTabBarWay1];
    
    
}
/**
 *  这个方法是 不设置其title 而是直接是一个图片 通过设置其frame 把title的位置占据
 */
- (void)customeTabBarWay1
{
    UITabBarItem *item1 = self.tabBar.items[0];
    item1.tag = 0;
    [self tabbarItem:item1
           imageName:@"tabBar_news"
     selectImageName:@"tabBar_news2"];
    
    UITabBarItem *item2 = self.tabBar.items[1];
    item2.tag = 1;
    [self tabbarItem:item2
           imageName:@"tabBar_tool"
     selectImageName:@"tabBar_tool2"];
    
    UITabBarItem *item3 = self.tabBar.items[2];
    item3.tag = 2;
    [self tabbarItem:item3
           imageName:@"tabBar_forum"
     selectImageName:@"tabBar_forum2"];
    
    UITabBarItem *item4 = self.tabBar.items[3];
    item4.tag = 3;
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if ([userDefaults boolForKey:@"newFindData"]) {
        [self tabbarItem:item4
               imageName:@"tabBar_findRed"
         selectImageName:@"tabBar_find2Red"];
        
        
    }else
    {
        
        [self tabbarItem:item4
               imageName:@"tabBar_find"
         selectImageName:@"tabBar_find2"];
    }
    
    UITabBarItem *item5 = self.tabBar.items[4];
    item5.tag = 4;
    [self tabbarItem:item5
           imageName:@"tabBar_shop"
     selectImageName:@"tabBar_shop2"];
    
}
- (void)tabbarItem:(UITabBarItem *)item
         imageName:(NSString *)imageName
   selectImageName:(NSString *)selectImageName {
    
    /**
     *  把title的位置给挤掉了
     *
     */
    [item setImageInsets:UIEdgeInsetsMake(6, 0, -6, 0)];
    
    UIImage *image = [UIImage imageNamed:imageName];
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item.image = image;
    UIImage *selectImage = [UIImage imageNamed:selectImageName];
    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item.selectedImage = selectImage;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
