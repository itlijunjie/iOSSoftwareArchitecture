//
//  ViewController.m
//  SimpleLayered
//
//  Created by lijunjie on 5/2/15.
//  Copyright (c) 2015 lijunjie. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "LogicModelManager.h"
#import "ProfileInterface.h"

@interface ViewController ()
{
    UIButton *_btn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    _btn.backgroundColor = [UIColor redColor];
    __unused id <ProfileInterface> profile = [[LogicModelManager share] getProfileModel];
    [self.view addSubview:_btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    UIView *superView = self.view;
    [_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(superView);
        make.width.equalTo(@(100));
        make.height.equalTo(@(30));
    }];
}

#pragma mark - Action

- (void)btnAction:(id)sender
{
    NSLog(@"%@_%s",[self class],__FUNCTION__);
}

@end
