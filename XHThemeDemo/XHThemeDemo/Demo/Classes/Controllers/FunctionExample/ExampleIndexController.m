//
//  ExampleTableViewController.m
//  XHThemeDemo
//
//  Created by mryel on 2022/3/18.
//

#import "ExampleIndexController.h"
#import "FunctionExamViewController.h"


@interface ExampleIndexController ()
/** 数据源*/
@property (nonatomic, copy) NSArray *dataA;

@end

@implementation ExampleIndexController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"ExampleIndexController"];

    
    self.dataA = @[@"换肤-背景色",@"换肤-图片",@"换肤-文字颜色",@"换肤-边框"];

}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataA.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExampleIndexController" forIndexPath:indexPath];
    
    NSString *info = self.dataA[indexPath.row];
    cell.textLabel.text = info;
    cell.textLabel.textColor = UIColor.blackColor;
    cell.contentView.backgroundColor = UIColor.whiteColor;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FunctionExamViewController *fc = [FunctionExamViewController new];
    fc.type = indexPath.row;
    [self.navigationController pushViewController:fc animated:NO];
    
  
}

@end
