//
//  UITextView+placeholder.h
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/8/3.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (placeholder)
/**
*  author xulianpeng
*
*  @param placeholder       自定义预留字
*  @param placeholderColor  默认颜色已经设置 可以自定义
*  @param placeholderFont   默认和uitextview的font大小一样,否则会出现光标比预留字长的现象,故一般不需设置,
*  @param placeholderLabel  一般不需要此参数
*
*/
@property(nonatomic,copy)NSString *xlp_placeholder;
@property(nonatomic,strong)UIColor *xlp_placeholderColor;
@property(nonatomic,strong)UIFont *xlp_placeholderFont;

@property(nonatomic,strong)UILabel *xlp_placeholderLabel;
@end
