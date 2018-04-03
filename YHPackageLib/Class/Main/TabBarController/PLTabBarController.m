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
                                          normalIconName:@""
                                        selectedIconName:@""
                                               classType:[PLHomeVC class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第二个"
                                          normalIconName:@""
                                        selectedIconName:@""
                                               classType:[UIViewController class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第二个"
                                          normalIconName:@""
                                        selectedIconName:@""
                                               classType:[UIViewController class]]];
    [childVCs addObject:[YHChildVCModel vcModelWithTitle:@"第二个"
                                          normalIconName:@""
                                        selectedIconName:@""
                                               classType:[UIViewController class]]];
    
    return [childVCs copy];
}

@end
