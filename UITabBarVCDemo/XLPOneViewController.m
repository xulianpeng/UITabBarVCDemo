//
//  XLPOneViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 16/7/25.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "XLPOneViewController.h"
#import "Masonry.h"
#import "oneDemoTextViewViewController.h"
#import "twoDemoViewController.h"
#import "threeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
@interface XLPOneViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *mainView;
    NSArray *dataArr;
    NSArray *VCArr;
}
@end

@implementation XLPOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dataArr = [NSArray arrayWithObjects:@"测试1",@"测试二",@"测试1",@"测试二",@"UICollectionViewDemo",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二",@"测试1",@"测试二", nil];
    
    FourViewController *fourVC = [[FourViewController alloc]initWithNibName:@"FourViewController" bundle:nil];
    VCArr = [NSArray arrayWithObjects:[oneDemoTextViewViewController new],[twoDemoViewController new],[threeViewController new], fourVC,[FiveViewController new],nil];
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
    
    switch (indexPath.row) {
        case 0:
            [self jumpToOneVC:0];
            break;
            case 1:
            [self jumpToOneVC:1];
            break;
        case 2:
            [self jumpToOneVC:2];
            break;
        case 3:
            [self jumpToOneVC:3];
            break;
        case 4:
            [self jumpToOneVC:4];
            break;
        default:
            break;
    }
}
- (void)jumpToOneVC:(NSInteger)row
{
    if (row < VCArr.count) {
        
        XLPViewController *aVC = VCArr[row];
        [self.navigationController pushViewController:aVC animated:YES];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
