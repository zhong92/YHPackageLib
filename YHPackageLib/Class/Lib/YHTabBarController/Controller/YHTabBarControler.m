//
//  YHTabBarControler.m
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "YHTabBarControler.h"
#import "YHTabBar.h"

@interface YHTabBarControler ()

/** 子控制器模型数组 */
@property (nonatomic, strong) NSArray<YHChildVCModel *> *childVCModels;

@end

@implementation YHTabBarControler

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initChildViewControllerWithChildVCModels:[self childViewControllerModels:[NSMutableArray array]]];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // 初始化TabBar
    YHTabBar *tabBar = [[YHTabBar alloc] init];
    [self.tabBar addSubview:tabBar];
    tabBar.frame = self.tabBar.bounds;
}

/** 初始化子控制器 */
- (void)initChildViewControllerWithChildVCModels:(NSArray<YHChildVCModel *> *)childVCModels
{
    self.childVCModels = childVCModels;
    
    // 添加子控制器
    for (NSInteger index = 0; index < childVCModels.count; index++) {
        YHChildVCModel *childVCModel = childVCModels[index];
        [self addChildViewController:[[childVCModel.classType alloc] init]];
    }
    
}

#pragma mark - YHTabBarControllerProtocol
//- (NSArray<YHChildVCModel *> *)childViewControllerModels:(NSMutableArray<YHChildVCModel *> *)childVCs
//{
//    return [childVCs copy];
//}

@end
