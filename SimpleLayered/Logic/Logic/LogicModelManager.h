//
//  LogicModelManager.h
//  Logic
//
//  Created by lijunjie on 15/8/9.
//  Copyright (c) 2015年 lijunjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LogicManagerInterface.h"

@interface LogicModelManager : NSObject <LogicManagerInterface>

+ (id<LogicManagerInterface>)share;

@end
