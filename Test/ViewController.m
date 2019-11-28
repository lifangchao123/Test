//
//  ViewController.m
//  Test
//
//  Created by 李方超 on 2019/11/28.
//  Copyright © 2019 dreamchaser. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *descLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupLayout];
}

- (void)setupLayout {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    self.titleLabel.frame = CGRectMake(0, (height-100)*0.5, width, 100);
    
    self.descLabel.frame = CGRectMake(0, CGRectGetMaxY(_titleLabel.frame)+50, width, 100);
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"这是一个测试项目";
        _titleLabel.textColor = [UIColor redColor];
        _titleLabel.font = [UIFont systemFontOfSize:18];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:_titleLabel];
    }
    return _titleLabel;
}

- (UILabel *)descLabel {
    if (!_descLabel) {
        _descLabel = [[UILabel alloc] init];
        _descLabel = [[UILabel alloc] init];
        _descLabel.text = @"这是一部分需要更新的内容";
        _descLabel.textColor = [UIColor redColor];
        _descLabel.font = [UIFont systemFontOfSize:18];
        _descLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:_descLabel];
    }
    return _descLabel;
}

@end
