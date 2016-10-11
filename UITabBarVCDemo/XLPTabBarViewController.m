
//
//  XLPTabBarViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPTabBarViewController.h"
#import "XLPBaseNavigationViewController.h"
#import "XLPOneViewController.h"
#import "XLPTwoViewController.h"
#import "XLPThreeViewController.h"
#import "XLPFourViewController.h"
#import "XLPFiveViewController.h"
#import "XLPTabBar.h"
//#import <objc/message.h>
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

/**
 *  在IOS7以前，UITabbarItem的图片都是被固定渲染为蓝色，想要改变UITabbarItem的图片颜色就必须要自定义，在IOS7以后，得到了更新，方便大家自己去设定颜色，下面给出代码！
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    _oneVC = [[XLPOneViewController alloc]init];
//    _twoVC = [[XLPTwoViewController alloc]init];
//    _threeVC = [[XLPThreeViewController alloc]init];
//    _fourVC = [[XLPFourViewController alloc]init];
//    _fiveVC = [[XLPFiveViewController alloc]init];
//    
//    
//    
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
//
//    /**
//     *  通过这种方式 设置image 点击时保持其原始颜色.
//     */
//    UIImage * image = [UIImage imageNamed:@"tabBar_find"];
//    UIImage * selectImage = [UIImage imageNamed:@"tabBar_find2"];
//    selectImage = [selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    
//    UITabBarItem *lastTabBarItem = [[UITabBarItem alloc]init];
//    lastTabBarItem.image = image;
//    lastTabBarItem.selectedImage = selectImage;
//    lastTabBarItem.title = @"发现";
//    _fiveVC.tabBarItem = lastTabBarItem;
//    self.viewControllers = @[_oneVC,_twoVC,_threeVC,_fourVC,_fiveVC];
    
    /**
     *  设置title的颜色 而不是默认的颜色
     */
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blueColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
    
     //=========  华丽的分割线==============
    
    /**
     方法 三
     *  在方法一的基础上,只需设置选中时的图片和非选中状态的一样 和 title的颜色,只需要下面一行代码 即可设置 选中时的 图片和标题的颜色(系统默认的 非选中一般都是灰色 )
     */
    
//    self.tabBar.tintColor = [UIColor purpleColor];
//    self.tabBar.barTintColor = [UIColor purpleColor];//修改tabBar的背景色
    
   //=========  华丽的分割线==============
    
    /**
     *  方法二
     *  图片要适当的放大  大概88 * 88 左右 这样的话 颜色样式 随心所欲
     *
     */
//    [self customeTabBarWay1];
        //=========  华丽的分割线==============
    /**
     *  主流的APP的自定义tabBar 比如简书 新浪微博
     *  方法三
     *
     */
    
    _oneVC = [[XLPOneViewController alloc]init];
    _twoVC = [[XLPTwoViewController alloc]init];
    _threeVC = [[XLPThreeViewController alloc]init];
    _fourVC = [[XLPFourViewController alloc]init];
    _fiveVC = [[XLPFiveViewController alloc]init];
    [self setupChildViewController];
    
    XLPTabBar *custormTabBar = [[XLPTabBar alloc]initWithFrame:self.tabBar.frame];
   // 2. 利用KVC把readonly权限改过来
    [self setValue:custormTabBar forKeyPath:@"tabBar"];
    [custormTabBar.plusButton addTarget:self action:@selector(addAction:) forControlEvents:UIControlEventTouchUpInside];
    custormTabBar.tintColor = [UIColor orangeColor];
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

#pragma mark - 创建TabBarController的4个子控制器
// 封装创建TabBarController的4个子控制器的方法
- (void)setupChildViewController {
    
    // 添加四个TabBarController的子控制器
    // 首页Home
     XLPBaseNavigationViewController *naVC1 = [[XLPBaseNavigationViewController alloc]initWithRootViewController:_oneVC];
    [self setupOneChildViewController:naVC1 image:[UIImage imageNamed:@"tabbar_home"] selectedImage:[UIImage imageNamed:@"tabbar_home_selected"] title:@"首页"];
    
    // 消息message
     XLPBaseNavigationViewController *naVC2 = [[XLPBaseNavigationViewController alloc]initWithRootViewController:_twoVC];
    [self setupOneChildViewController:naVC2 image:[UIImage imageNamed:@"tabbar_message_center"] selectedImage:[UIImage imageNamed:@"tabbar_message_center_selected"] title:@"消息"];
    
    // 发现discover
     XLPBaseNavigationViewController *naVC3 = [[XLPBaseNavigationViewController alloc]initWithRootViewController:_threeVC];
    [self setupOneChildViewController:naVC3 image:[UIImage imageNamed:@"tabbar_discover"] selectedImage:[UIImage imageNamed:@"tabbar_discover_selected"] title:@"发现"];
    
    // 我profile
     XLPBaseNavigationViewController *naVC4 = [[XLPBaseNavigationViewController alloc]initWithRootViewController:_fourVC];
    [self setupOneChildViewController:naVC4 image:[UIImage imageNamed:@"tabbar_profile"] selectedImage:[UIImage imageNamed:@"tabbar_profile_selected"] title:@"我"];
    
    // 添加到tabBar
    self.viewControllers = @[naVC1, naVC2, naVC3, naVC4];
   
    
}

#pragma mark - 创建一个子控制器的方法
// 封装创建一个子控制器的方法
- (void)setupOneChildViewController:(UIViewController *)vc image:(UIImage *)image selectedImage:(UIImage *)selectedImage title:(NSString *)title {
    vc.tabBarItem.image = image;
    vc.tabBarItem.selectedImage = selectedImage;
    vc.tabBarItem.badgeValue = @"10";
    vc.tabBarItem.title = title;
    
}
- (void)addAction:(UIButton *)bt
{
    NSLog(@"哈哈哈");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
