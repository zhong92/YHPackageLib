//
//  YHTabBarControler.m
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "YHTabBarControler.h"
#import "YHTabBar.h"

@interface YHTabBarControler () <YHTabBarDelegate>

/** 子控制器模型数组 */
@property (nonatomic, strong) NSArray<YHChildVCModel *> *childVCModels;

/** 当自身选择的控制器改变时，是否需要通知tabBar */
@property (nonatomic, assign) BOOL needTelTabBar;
/** 新的TabBar */
@property (nonatomic, weak) YHTabBar *nTabBar;

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
    tabBar.childViewControllers = self.childViewControllers;
    tabBar.childVCModels = self.childVCModels;
    tabBar.delegate = self;
    [self.tabBar addSubview:tabBar];
    self.nTabBar = tabBar;
    tabBar.frame = self.tabBar.bounds;
    self.needTelTabBar = YES;
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

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    if (self.needTelTabBar) {
        [self.nTabBar tabBarControllerSelectFrom:self.selectedIndex to:selectedIndex];
    }
    
    [super setSelectedIndex:selectedIndex];
}

#pragma mark - YHTabBarDelegate
- (void)tabBarSelectFrom:(NSInteger)from to:(NSInteger)to
{
    self.needTelTabBar = NO;
    [self setSelectedIndex:to];
    self.needTelTabBar = YES;
}

//- (NSArray<YHChildVCModel *> *)childViewControllerModels:(NSMutableArray<YHChildVCModel *> *)childVCs
//{
//    return [childVCs copy];
//}

@end
