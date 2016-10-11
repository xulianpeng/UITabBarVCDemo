//
//  UIButton+disableTime.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/8/9.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "UIButton+disableTime.h"
#import <objc/runtime.h>

static const void *s_XLPButtonDisbletimeKey = "s_XLPButtonDisbletimeKey";
static const void *s_XLPButtonIgnoreKey = "s_XLPButtonIgnoreKey";
@interface UIButton (extension)

@end
@implementation UIButton (disableTime)
/*
- (void)setXlp_disableTime:(CGFloat)xlp_disableTime
{
    objc_setAssociatedObject(self, s_XLPButtonDisbletimeKey, @(xlp_disableTime), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)xlp_disableTime
{
    return  [objc_getAssociatedObject(self, s_XLPButtonDisbletimeKey) floatValue];
}

- (void)setXlp_ignore:(BOOL)xlp_ignore
{
    objc_setAssociatedObject(self, s_XLPButtonIgnoreKey, @(xlp_ignore), OBJC_ASSOCIATION_ASSIGN);
}
- (BOOL)xlp_ignore
{
    return [objc_getAssociatedObject(self, s_XLPButtonIgnoreKey) boolValue];
}

+ (void)load {
    
    
    Method systemMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
//    SEL sysSEL = @selector(addTarget:action:forControlEvents:);
    
    Method myMethod = class_getInstanceMethod(self, @selector(xlp_sendAction:to:forEvent:));
//    SEL mySEL = @selector(xlp_addTarget:action:forControlEvents:);
    
    //添加方法进去
//    BOOL didAddMethod = class_addMethod(self, sysSEL, method_getImplementation(myMethod), method_getTypeEncoding(myMethod));
//    
//    //如果方法已经存在了
//    if (didAddMethod) {
//        class_replaceMethod(self, mySEL, method_getImplementation(systemMethod), method_getTypeEncoding(systemMethod));
//    }else{
//        method_exchangeImplementations(systemMethod, myMethod);
//        
//    }
    
    
    method_exchangeImplementations(systemMethod, myMethod);

    
}
//- (void)addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
//- (void)xlp_sendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event
//{
//    
//    if (self.xlp_disableTime > 0) {
//        
//        [self performSelector:action withObject:target afterDelay:self.xlp_disableTime];
//    }
//}

- (void)xlp_sendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event {

//    if (self.xlp_ignore || self.xlp_ignore == nil) return;
    if (self.xlp_ignore) return;
    if (self.xlp_disableTime > 0) {
        
        self.xlp_ignore = YES;
        
        [self performSelector:@selector(setXlp_ignore:) withObject:target afterDelay:self.xlp_disableTime];
        
    }
    
    [self xlp_sendAction:action to:target forEvent:event];

    
//    if ([NSDate date].timeIntervalSince1970 - self.cs_acceptEventTime < self.cs_acceptEventInterval) {
//        return;
//    }
//    
//    if (self.cs_acceptEventInterval > 0) {
//        self.cs_acceptEventTime = [NSDate date].timeIntervalSince1970;
//    }
//    
//    [self cs_sendAction:action to:target forEvent:event];
    
}
*/
@end
