//
//  NSData+YH.h
//  YHPackageLib
//
//  Created by sunshine on 2018/4/9.
//  Copyright © 2018年 harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (YH)

/** 通过一个byte字符串创建NSData */
+ (instancetype)dataWithBytesString:(NSString *)bytesString;

/** NSData 第 index 位是否是对应字符串的16进制,
 *  byteStr只能是一个长度为2的字符串 如：@"11" @"ae" @"3c"
*   index 是对应的位置
 */
- (BOOL)isEqualToByte:(NSString *)byteStr atIndex:(int)index;

@end
