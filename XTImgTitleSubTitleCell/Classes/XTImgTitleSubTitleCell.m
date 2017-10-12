//
//  CMemberLevelCell.m
//  APPCRM
//
//  Created by 何凯楠 on 2017/10/12.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "XTImgTitleSubTitleCell.h"

@interface XTImgTitleSubTitleCell()


@end

@implementation XTImgTitleSubTitleCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupViews];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupViews];
}

- (void)setupViews {
    UIImageView *imgView = [UIImageView new];
    [self.contentView addSubview:imgView];
    self.imgView = imgView;
    
    UILabel *titleL = [[UILabel alloc] init];
    titleL.font = [UIFont systemFontOfSize:15];
    [self.contentView addSubview:titleL];
    self.titleLabel = titleL;
    
    UILabel *subtitleL = [[UILabel alloc] init];
    subtitleL.font = [UIFont systemFontOfSize:13];
    subtitleL.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:subtitleL];
    self.subTitleLabel = subtitleL;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat margin = 5;
    CGFloat viewW = CGRectGetWidth(self.contentView.frame);
    CGFloat viewH = CGRectGetHeight(self.contentView.frame);
    CGFloat imgWH = 0;
    if (self.imgView.image) {
        imgWH = CGRectGetHeight(self.contentView.frame) - 2 * margin;
        self.imgView.frame = CGRectMake(margin, margin, imgWH, imgWH);
        self.imgView.layer.masksToBounds = YES;
        self.imgView.layer.cornerRadius = imgWH * 0.5;
    }
    
    CGFloat labelX = CGRectGetMaxX(self.imgView.frame) + margin * 2;
    CGFloat labelW = viewW - labelX;
    CGFloat labelH = viewH * 0.5;

    if (self.subTitleLabel.text.length) {
        self.subTitleLabel.frame = CGRectMake(labelX, labelH, labelW, labelH);
    } else {
        labelH = viewH;
    }
    self.titleLabel.frame = CGRectMake(labelX, 0, labelW, labelH);
    
}





@end
