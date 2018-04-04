//
//  YHChildVCModel.h
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHChildVCModel : NSObject

/** 显示文字 */
@property (nonatomic, copy) NSString *title;
/** 正常是的资源图片名 */
@property (nonatomic, copy) NSString *normalIconName;
/** 选中资源图片名 */
@property (nonatomic, copy) NSString *selectedIconName;
/** 控制器的类型 */
@property (nonatomic, assign) Class classType;

/** 快速创建一个实例对象 */
+ (instancetype)vcModelWithTitle:(NSString *)title normalIconName:(NSString *)normalIconName selectedIconName:(NSString *)selectedIconName classType:(Class)classType;

@end
