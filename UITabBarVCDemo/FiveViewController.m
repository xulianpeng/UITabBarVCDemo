//
//  FiveViewController.m
//  UITabBarVCDemo
//
//  Created by xulianpeng on 2016/10/11.
//  Copyright © 2016年 xulianpeng. All rights reserved.
//

#import "FiveViewController.h"
#import "CollectionViewCell.h"
@interface FiveViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    UICollectionView *_aCollectionView;
    NSMutableArray *_dataArr;
    UILongPressGestureRecognizer *_longPress;
}
@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *aLayout = [[UICollectionViewFlowLayout alloc]init];
    aLayout.itemSize = CGSizeMake(kSCREEN_WIDTH/4, 50);
    aLayout.minimumLineSpacing = 20;
    aLayout.minimumInteritemSpacing = 5;
    aLayout.sectionInset = UIEdgeInsetsMake(10,5, 10, 10);;
    
    _aCollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, kSCREEN_WIDTH, kSCREEN_HEIGHT) collectionViewLayout:aLayout];
    _aCollectionView.delegate = self;
    _aCollectionView.dataSource = self;
    _aCollectionView.backgroundColor = kColorWith16RGB(0xf0f0f0);
    [_aCollectionView setShowsVerticalScrollIndicator:YES];
    [_aCollectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"myCell"];
    [self.view addSubview:_aCollectionView];
    self.view.backgroundColor = [UIColor whiteColor];
    _dataArr = [NSMutableArray arrayWithObjects:@"红包", @"转账", @"手机充值", @"芝麻信用",
                @"天猫", @"生活缴费", @"蚂蚁呗", @"世界那么大",
                @"余额宝", @"安全快付", @"蚂蚁聚宝", @"哈哈",@"红包1", @"转账1", @"手机充值1", @"芝麻信用1",
                @"天猫1", @"生活缴费1", @"蚂蚁呗1", @"世界那么大1",
                @"余额宝1", @"安全快付1", @"蚂蚁聚宝1", @"哈哈1",  nil];
    [_aCollectionView reloadData];
    
    _longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(lonePressMoving:)];
    [_aCollectionView addGestureRecognizer:_longPress];
}
#pragma mark - collection 的代理方法
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return _dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    cell.label.text = _dataArr[indexPath.row];
    cell.label.backgroundColor = [UIColor magentaColor];
//    HDFBrandDocterDepartmentModel *aModel = _dataArr[indexPath.row];
//    cell.mymodel = aModel;
//    kWeakObject(cell)
//    cell.clickBlock = ^(BOOL isSelcted){
//        
//        if (!isSelcted) {
//            [_selectedArr addObject:aModel];
//            aModel.isSelected = YES;
//            
//        } else {
//            if ([_selectedArr containsObject:aModel]) {
//                
//                [_selectedArr removeObject:aModel];
//                aModel.isSelected = NO;
//            }
//        }
//        weakObject.mymodel = aModel;
//        
//    };
    return cell;
}


- (void)lonePressMoving:(UILongPressGestureRecognizer *)longPress
{
    
    switch (_longPress.state) {
        case UIGestureRecognizerStateBegan: {
            {
                NSIndexPath *selectIndexPath = [_aCollectionView indexPathForItemAtPoint:[_longPress locationInView:_aCollectionView]];
                // 找到当前的cell
                CollectionViewCell *cell = (CollectionViewCell *)[_aCollectionView cellForItemAtIndexPath:selectIndexPath];
                // 定义cell的时候btn是隐藏的, 在这里设置为NO
//                [cell.btnDelete setHidden:NO];
                [_aCollectionView beginInteractiveMovementForItemAtIndexPath:selectIndexPath];
            }
            break;
        }
        case UIGestureRecognizerStateChanged: {
            [_aCollectionView updateInteractiveMovementTargetPosition:[longPress locationInView:_longPress.view]];
            break;
        }
        case UIGestureRecognizerStateEnded: {
            [_aCollectionView endInteractiveMovement];
            break;
        }
        default: [_aCollectionView cancelInteractiveMovement];
            break;
    }
}
- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(nonnull NSIndexPath *)sourceIndexPath toIndexPath:(nonnull NSIndexPath *)destinationIndexPath
{
    NSIndexPath *selectIndexPath = [_aCollectionView indexPathForItemAtPoint:[_longPress locationInView:_aCollectionView]];
    // 找到当前的cell
    CollectionViewCell *cell = (CollectionViewCell *)[_aCollectionView cellForItemAtIndexPath:selectIndexPath];
//    [cell.btnDelete setHidden:YES];
    [_dataArr exchangeObjectAtIndex:sourceIndexPath.item withObjectAtIndex:destinationIndexPath.item];
    [_aCollectionView reloadData];
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
