//
//  CollectionViewCell.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 2016/10/11.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
- (id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        
        self.label = [[UILabel alloc]init];
        [self.contentView addSubview:self.label];
        [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.mas_offset(2);
            make.right.bottom.mas_offset(2);
            
        }];
        self.label.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

@end
