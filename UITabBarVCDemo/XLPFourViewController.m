//
//  XLPFourViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPFourViewController.h"

@interface XLPFourViewController ()
{
    UITextView *_textview;
}
@end

@implementation XLPFourViewController

- (void)viewDidLoad {
    self.navigationItem.title = @"four";
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    

    
    CGSize size = CGSizeMake(10, 0);
    CGRect rect = CGRectMake(10, 64, 150, 200);
    
    NSTextContainer *textContainer = [[NSTextContainer alloc] initWithSize: size];
    
    NSLayoutManager *layoutManager = [NSLayoutManager new];
    [layoutManager addTextContainer: textContainer];
    NSTextStorage *textStorage = [[NSTextStorage alloc] initWithString: @""];
    [textStorage addLayoutManager: layoutManager];
    UITextView *aTextView = [[UITextView alloc] initWithFrame:rect textContainer: textContainer];
    UIEdgeInsets insert = UIEdgeInsetsMake(20, 5, 0, 5);
    aTextView.textContainerInset = insert;
    textContainer.lineBreakMode = NSLineBreakByTruncatingMiddle;
    aTextView.text = @"sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附www.baidu.com件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发";
    aTextView.backgroundColor = [UIColor redColor];
    [self.view addSubview: aTextView];
    
    _textview = [[UITextView alloc]initWithFrame:CGRectMake(160, 64, 150, 400)];
    _textview.text =  @"sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到724619666@qq.com回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发sdfsfjsdkfjksjfksdsh的机会绝对神烦大叔 大煞风景萨哈地13520144597方水电费几哈送积分换收到回复叫撒哈弗家水电费和骄傲是否sjs发送的经费和圣诞节饭多舒服就好说减肥后收到回复举案说法的身份及双方就爱上说得对恢复就爱上对方收到回复就暗示的附件是双方就收到货的附件山东省地方即可收到回复举案说法坚实的发顺丰收到货发送附件是地方环境是发送到符合双方后视镜和骄傲是恢复了恢复会计师的粉红色手动挡和房价是否是否收到回复思考和房价是否和圣诞节和副驾驶飞机开始 啥地方环境是否就是否回家时双方就舒服很多事粉红色的地方送积分换舒服舒服就是否会受到发 www.baidu.com";
    _textview.editable = NO;
    _textview.allowsEditingTextAttributes =  NO;
    _textview.dataDetectorTypes = UIDataDetectorTypeAll;
    NSDictionary *linkAttributes = @{NSForegroundColorAttributeName: [UIColor blueColor],
                                     NSUnderlineColorAttributeName: [UIColor blackColor],
                                     NSUnderlineStyleAttributeName: @(NSUnderlinePatternDash)
                                     };
    _textview.linkTextAttributes = linkAttributes;
    [self.view addSubview:_textview];
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
