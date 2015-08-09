//
//  LogicModelProtocol.h
//  Logic
//
//  Created by lijunjie on 15/8/9.
//  Copyright (c) 2015年 lijunjie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LogicModelProtocol <NSObject>

/**
 *  装载模块
 */
- (void)loadModel;

/**
 *  清空模块
 */
- (void)clearModel;

/**
 *  下载模块
 */
- (void)unLoadModel;

@end
