//
//  oneDemoTextViewViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/8/1.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "oneDemoTextViewViewController.h"
#import "XLPTextView.h"
#import "UITextView+HDFTextview.h"
@interface oneDemoTextViewViewController ()<UITextViewDelegate>
{
    XLPTextView *aTextView_55;
    UITextView *aTextView_44;
    UITextView *aTextView_33;
    XLPTextView *aTextView_22;
    XLPTextView *aTextView_11;
}
@end

@implementation oneDemoTextViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    aTextView_55 = [[XLPTextView alloc]init];
    [self.view addSubview:aTextView_55];
    aTextView_55.frame = CGRectMake(10, 100, 70, 40);
    aTextView_55.placeholder = @"请输入简介";
    aTextView_55.text = @"55就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非";
    
    
    aTextView_44 = [[UITextView alloc]init];
    [self.view addSubview:aTextView_44];
    aTextView_44.hdf_placeholder = @"请输入简介";
    aTextView_44.frame = CGRectMake(90, 100, 70, 40);
    aTextView_44.text = @"44就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非";
    
//    [aTextView_44 displayTheName];
    
    
    
    aTextView_33 = [[UITextView alloc]init];
    [self.view addSubview:aTextView_33];
    [aTextView_33 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(aTextView_44.mas_right).offset(10);
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(40);
    }];
    
    aTextView_33.text = @"33就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非";
    aTextView_33.font = [UIFont systemFontOfSize:16];
    aTextView_33.delegate = self;
    aTextView_33.hdf_placeholder = @"请输入简介";
    aTextView_33.hdf_placeholderColor = [UIColor redColor];
    
    
    
   aTextView_22 = [[XLPTextView alloc]init];
    [self.view addSubview:aTextView_22];
    [aTextView_22 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(aTextView_33.mas_bottom).offset(10);
        make.right.mas_equalTo(-10);
        make.height.mas_equalTo(40);
    }];
    
    aTextView_22.text = @"22就分手";
    aTextView_22.font = [UIFont systemFontOfSize:16];
    aTextView_22.delegate = self;
    aTextView_22.placeholder = @"请输入简介";
    aTextView_22.placeholderColor = [UIColor redColor];
    
    //最下面
    aTextView_11 = [[XLPTextView alloc]init];
    [self.view addSubview:aTextView_11];
    aTextView_11.frame = CGRectMake(10, 260, 300, 100);
    aTextView_11.placeholder = @"请输入简介";
    aTextView_11.font = [UIFont systemFontOfSize:25];
    aTextView_11.placeholderColor = [UIColor magentaColor];
    aTextView_11.text = @"11就分手的减肥快圣诞节疯狂圣诞节疯狂就速度快放假圣诞节疯狂就撒旦开发加速度快解放空数据非坚实的咖啡加咖啡涉及到地方开始交电费款水电费送积分卡是大家发斯蒂芬水电费说得对方式快捷方式是减肥开始减肥了开始减肥 接收到开飞机上开发接口是大家纷纷是接收到的开发机刷卡福建按法律加拉法积分卡设计费圣诞节方式使肌肤开始就分手就发送附件案件发了是否所涉及法律上开发及是否所说的附件是开放双开飞机上考虑分是;龙卷风快乐圣诞节福利卡圣诞节方式;是非水电费及案例及是否;按时 束带结发卡设计费涉及到福克斯的积分上的地方就是否神九发射积分卡刷卡缴费;第三方司法局看了房价快速减肥是打飞机神九发射快捷方式看看积分司法局开始的减肥抗生素的京东方刷卡缴费司法解释;积分;打飞机;拉丝机的发生非";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSArray *arr = [NSArray arrayWithObjects:aTextView_11,aTextView_22,aTextView_33,aTextView_44,aTextView_55, nil];
    for (id object in arr) {
        
        if ([object isFirstResponder]) {
            [object resignFirstResponder];
        }
    }
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
