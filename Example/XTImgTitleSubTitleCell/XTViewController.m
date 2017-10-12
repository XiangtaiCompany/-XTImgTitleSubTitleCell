//
//  XTViewController.m
//  XTImgTitleSubTitleCell
//
//  Created by bubiqudong on 10/12/2017.
//  Copyright (c) 2017 bubiqudong. All rights reserved.
//

#import "XTViewController.h"
#import <XTImgTitleSubTitleCell/XTImgTitleSubTitleCell.h>

@interface XTViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation XTViewController

- (void)viewDidLoad
{
//    [self.tableView registerClass:[XTImgTitleSubTitleCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark- UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.001;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    XTImgTitleSubTitleCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
//    if (!cell) {
//        cell = [[XTImgTitleSubTitleCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    }
    if (indexPath.row == 0) {
        cell.imgView.image = [UIImage imageNamed:@"header"];
    }
    cell.titleLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    cell.subTitleLabel.text = [NSString stringWithFormat:@"this is %ld", indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



@end
