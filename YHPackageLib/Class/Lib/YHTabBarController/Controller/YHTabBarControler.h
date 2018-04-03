//
//  YHTabBarControler.h
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

// 使用时继承该类，创建TabBarController

#import <UIKit/UIKit.h>
#import "YHChildVCModel.h"

@protocol YHTabBarControllerProtocol <NSObject>

@required
// 初始化
- (NSArray<YHChildVCModel *> *)childViewControllerModels:(NSMutableArray<YHChildVCModel *> *)childVCs;

@end

@interface YHTabBarControler : UITabBarController <YHTabBarControllerProtocol>

//

@end
