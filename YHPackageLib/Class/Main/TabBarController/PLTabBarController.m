//
//  PLTabBarController.m
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "PLTabBarController.h"

#import "PLHomeVC.h"

@interface PLTabBarController ()

@end

@implementation PLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (NSArray<YHChildVCModel *> *)childViewControllerModels:(NSMutableArray<YHChildVCModel *> *)childVCs
{
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第一个"
                                          normalIconName:@"tabBar_0"
                                        selectedIconName:@"tabBar_0HL"
                                               classType:[PLHomeVC class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第二个"
                                          normalIconName:@"tabBar_1"
                                        selectedIconName:@"tabBar_1HL"
                                               classType:[UIViewController class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第三个"
                                          normalIconName:@"tabBar_2"
                                        selectedIconName:@"tabBar_2HL"
                                               classType:[UIViewController class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第四个"
                                          normalIconName:@"tabBar_3"
                                        selectedIconName:@"tabBar_3HL"
                                               classType:[UIViewController class]]];
    
    return [childVCs copy];
}

@end
