//
//  XLPTabBar.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPTabBar.h"
@interface XLPTabBar ()

// 定义中间按钮的属性
//@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation XLPTabBar
/**
- (UIButton *)middleButton
{
    if (_plusButton == nil) {
        // 1.根据自定义类型初始化一个button
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        // 2.设置btn的各状态的图片属性
        [btn setImage:[UIImage imageNamed:@"tabbar_findRed"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_find2Red"] forState:UIControlStateHighlighted];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        // 3. 设置btn按钮的尺寸和图片的默认大小一样大
//        [btn sizeToFit];
    
        // 4. 把按钮赋值给_plusButton
        _plusButton = btn;
        
        // 5. 把按钮添加到tabBar中 ,建立强引用
        [self addSubview:_plusButton];
        
    }
    
    return _plusButton;
}
**/

- (UIButton *)plusButton {
    if (_plusButton == nil) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        
        [btn sizeToFit];
        
        _plusButton = btn;
        [self addSubview:_plusButton];
    }
    
    return _plusButton;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
        [self layoutSubviews];
    }
    return self;
}
#pragma mark - 调整子控件的位置和尺寸
// 调整子控件的位置和尺寸
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    CGFloat butX = 0;  // x 是不确定的,可以初始化为0
    CGFloat butY = 0;  // y 就是0
    CGFloat butW = w / (self.items.count + 1); // 有几个UITabBarButton就有几个items模型
    CGFloat butH = h;
    
    int i = 0; // 定义角标,初始化为0
    // 调整系统自带的tabBar上面的按钮的位置
    for (UIView *tabBarButton in self.subviews) {
        // 判断是否是UITabBarButton
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            // 因为中间需要预留一个位置,所以,当i到中间的是,就跳过
            if (i == 2) {
                i = 3;
            }
            butX = i * butW;
            tabBarButton.frame = CGRectMake(butX, butY, butW, butH);
            i++;
        }
    }
    
    // 设置中间按钮的位置
    self.plusButton.center = CGPointMake(w * 0.5, h * 0.5);
}
@end
