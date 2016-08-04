//
//  UITextView+HDFTextview.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/8/3.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "UITextView+HDFTextview.h"
#import <objc/runtime.h>
static const void *s_hdfTextViewPlaceholderLabelKey = "s_hdfTextViewPlaceholderLabelKey";
static const void *s_hdfTextViewPlaceholderTextKey = "s_hdfTextViewPlaceholderTextKey";



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

/**
 *  /
 */
@interface UITextView (HDFPlaceholderTextView)

@property (nonatomic, strong) UILabel *_hdf_private_placeholderLabel;

@end


@implementation UITextView (HDFPlaceholderTextView)

- (void)set_hdf_private_placeholderLabel:(UILabel *)_hdf_private_placeholderLabel {
    objc_setAssociatedObject(self,
                             s_hdfTextViewPlaceholderLabelKey,
                             _hdf_private_placeholderLabel,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UILabel *)_hdf_private_placeholderLabel {
    UILabel *label = objc_getAssociatedObject(self, s_hdfTextViewPlaceholderLabelKey);
    
    if (label == nil || ![label isKindOfClass:[UILabel class]]) {
        label = [[UILabel alloc] init];
        label.textAlignment = NSTextAlignmentLeft;
        label.font = self.font;
        label.backgroundColor = [UIColor clearColor];
        //    label.textColor = kHolderTipColor;
        [self addSubview:label];
        
        kWeakObject(self);
        self._hdf_private_placeholderLabel = label;
        CGFloat left = kIsIOS7OrLater ? 5 : 7;
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(weakObject).insets(UIEdgeInsetsMake(7.5, left, 0, 0));
        }];
        label.enabled = NO;
        
        [kNotificationCenter addObserver:kIsIOS7OrLater ? self : [UIApplication sharedApplication]
                                selector:@selector(hdf_placehoderTextChange:)
                                    name:UITextViewTextDidChangeNotification
                                  object:nil];
    }
    
    return label;
}

@end


/**
 *  <#Description#>
 */
@implementation UITextView (HDFTextview)


/**
 *  <#Description#>
 *
 *  @param notification <#notification description#>
 */
- (void)hdf_placehoderTextChange:(NSNotification *)notification {
    if (kIsIOS7OrLater) {
        if (!kIsEmptyString(self.text)) {
            self._hdf_private_placeholderLabel.text = @"";
        } else {
            self._hdf_private_placeholderLabel.text = self.hdf_placeholder;
        }
    }
}

- (UILabel *)hdf_placeholderLabel {
    return self._hdf_private_placeholderLabel;
}

- (void)setHdf_placeholder:(NSString *)hdf_placeholder {
    if (kIsEmptyString(hdf_placeholder)) {
        objc_setAssociatedObject(self, s_hdfTextViewPlaceholderLabelKey, nil, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        [self._hdf_private_placeholderLabel removeFromSuperview];
        return;
    }
    
    objc_setAssociatedObject(self,
                             s_hdfTextViewPlaceholderTextKey,
                             hdf_placeholder,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    if (!kIsEmptyString(self.text)) {
        self._hdf_private_placeholderLabel.text = @"";
    } else {
        self._hdf_private_placeholderLabel.text = hdf_placeholder;
    }
}

- (NSString *)hdf_placeholder {
    return objc_getAssociatedObject(self, s_hdfTextViewPlaceholderTextKey);
}

- (void)setHdf_placeholderColor:(UIColor *)hdf_placeholderColor {
    self._hdf_private_placeholderLabel.textColor = hdf_placeholderColor;
}

- (UIColor *)hdf_placeholderColor {
    return self._hdf_private_placeholderLabel.textColor;
}

- (void)setHdf_placeholderFont:(UIFont *)hdf_placeholderFont {
    self._hdf_private_placeholderLabel.font = hdf_placeholderFont;
}

- (UIFont *)hdf_placeholderFont {
    return self._hdf_private_placeholderLabel.font;
}
@end
