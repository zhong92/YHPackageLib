//
//  YHTabBar.h
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YHChildVCModel;

@protocol YHTabBarDelegate <NSObject>

@optional
// 初始化
- (void)tabBarSelectFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface YHTabBar : UIView

/** 子控制器数组 */
@property (nonatomic, weak) NSArray<UIViewController *> *childViewControllers;
/** 子控制器模型数组 */
@property (nonatomic, weak) NSArray<YHChildVCModel *> *childVCModels;

/** 代理 */
@property (nonatomic, weak) id<YHTabBarDelegate> delegate;

/** 控制器从第几个控制器到第几个控制器 */
- (void)tabBarControllerSelectFrom:(NSInteger)from to:(NSInteger)to;

@end
