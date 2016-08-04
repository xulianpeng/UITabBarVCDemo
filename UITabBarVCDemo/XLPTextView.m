//
//  XLPTextView.m
//  runTime
//
//  Created by xulianpeng on 16/8/2.
//  Copyright © 2016年 徐月下. All rights reserved.
//

#import "XLPTextView.h"
#import <objc/runtime.h>

#define leftOffset 3
#define topOffset 7
@interface XLPTextView ()

{
    UILabel *_placeholderLabel;
}
@end

//@interface UIApplication (HDFTextViewHolder)
//
//@end
//
//@implementation UIApplication (HDFTextViewHolder)
//
//- (void)hdf_placehoderTextChange:(NSNotification *)nofitication {
//    if (kIsIOS7OrLater) {
//        return;
//    }
//    UITextView *textView = nofitication.object;
//    if ([textView isKindOfClass:[UITextView class]]) {
//        if (!kIsEmptyString(textView.text)) {
//            textView.hdf_placeholderLabel.text = @"";
//        } else {
//            textView.hdf_placeholderLabel.text = textView.hdf_placeholder;
//        }
//    }
//}
//
//@end


//***************************************************

@implementation XLPTextView
/**
 *  <#Description#>
 *
 *  @param frame <#frame description#>
 *
 *  @return <#return value description#>
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        
       
        _placeholderLabel = [[UILabel alloc]init];
        [self addSubview:_placeholderLabel];
        [_placeholderLabel  mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self).offset(leftOffset);
            make.top.mas_equalTo(self).offset(topOffset);
        }];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(xlp_placeholderTextChange:)
                                                     name:UITextViewTextDidChangeNotification
                                                   object:nil];
        
    }
    return self;
}
- (void)xlp_placeholderTextChange:(NSNotification *)nofitication
{
    id object = nofitication.object;
    if ([object isKindOfClass:[XLPTextView class]]) {
        _placeholderLabel.text = self.placeholder;
        _placeholderLabel.font = self.font;
        if (self.text.length > 0) {
            
            _placeholderLabel.hidden = YES;
        } else {
            _placeholderLabel.hidden = NO;
        }
    }

}
- (void)setPlaceholder:(NSString *)placeholder
{
    objc_setAssociatedObject(self, @"XLPTextview", placeholder, OBJC_ASSOCIATION_COPY);
}

- (NSString *)placeholder
{
    return  objc_getAssociatedObject(self, @"XLPTextview");
    
}

//- (void)setPlaceholderFont:(UIFont *)placeholderFont
//{
//    _placeholderLabel.font = placeholderFont;
//}
//- (UIFont *)placeholderFont
//{
//    return self.font;
//}
- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderLabel.textColor = placeholderColor;
}
- (UIColor *)placeholderColor
{
    return _placeholderLabel.textColor;
}
- (void)dealloc
{
    [_placeholderLabel removeFromSuperview];
    _placeholderLabel = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UITextViewTextDidChangeNotification
                                                  object:nil];
}

@end
