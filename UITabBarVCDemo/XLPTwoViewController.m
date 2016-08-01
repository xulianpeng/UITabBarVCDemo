//
//  XLPTwoViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPTwoViewController.h"

@interface XLPTwoViewController ()

@end

@implementation XLPTwoViewController
/**
 *  toolBar的毛玻璃效果
 */
- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"two";
    UIImageView *aImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 100)];
    aImageView.image = [UIImage imageNamed:@"炉石传说logo"];
    [self.view addSubview:aImageView];
    
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:aImageView.bounds];
     toolBar.barStyle = UIBarStyleBlackTranslucent;
    [aImageView addSubview:toolBar];
    
    /**
     *  ios8以后的方法
     */
    UIBlurEffect * blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    //  毛玻璃视图
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    //添加到要有毛玻璃特效的控件中
    effectView.frame = aImageView.bounds;
    [aImageView addSubview:effectView];
    //设置模糊透明度
    effectView.alpha = .5f;
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
