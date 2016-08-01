//
//  XLPOneViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPOneViewController.h"
#import "Masonry.h"
@interface XLPOneViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *mainView;
    NSArray *dataArr;
}
@end

@implementation XLPOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dataArr = [NSArray arrayWithObjects:@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二", nil];
    mainView = [[UITableView alloc]init];
    [self.view addSubview:mainView];
    mainView.delegate = self;
    mainView.dataSource = self;
    mainView.backgroundColor = [UIColor magentaColor];
    [mainView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.top.mas_equalTo(self.view);
        make.right.mas_equalTo(self.view).offset(0);
        make.bottom.mas_equalTo(self.view).offset(0);
    }];
//    [mainView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [mainView reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.01;
}
 - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
   UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = dataArr[indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"00000");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
