//
//  LogicModelManager.m
//  Logic
//
//  Created by lijunjie on 15/8/9.
//  Copyright (c) 2015年 lijunjie. All rights reserved.
//

#import "LogicModelManager.h"
#import "ProfileModel.h"

@interface LogicModelManager ()
{
    id<ProfileInterface> _profileModel;
}

@end

@implementation LogicModelManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _profileModel = [[ProfileModel alloc] init];
    }
    return self;
}

+ (id<LogicManagerInterface>)share
{
    static LogicModelManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[LogicModelManager alloc] init];
    });
    return manager;
}

- (id<ProfileInterface>)getProfileModel
{
    return _profileModel;
}

@end
