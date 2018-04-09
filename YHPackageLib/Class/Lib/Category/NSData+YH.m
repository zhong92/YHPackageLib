//
//  NSData+YH.m
//  YHPackageLib
//
//  Created by sunshine on 2018/4/9.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "NSData+YH.h"

@implementation NSData (YH)


/** 通过一个byte字符串创建NSData */
+ (instancetype)dataWithBytesString:(NSString *)bytesString
{
    if (bytesString.length <= 0) return nil;
    
    NSString *str = bytesString;
    if (bytesString.length % 2 != 0) {
        str = [str stringByAppendingString:@"0"];
    }
    
    NSMutableData* data = [NSMutableData data];
    
    for (int index = 0; index < str.length; index += 2) {
        NSRange range = NSMakeRange(index, 2);
        NSString* hexStr = [str substringWithRange:range];
        NSScanner* scanner = [NSScanner scannerWithString:hexStr];
        unsigned int intValue;
        [scanner scanHexInt:&intValue];
        [data appendBytes:&intValue length:1];
    }
    
    return data;
}


/** NSData 第 index 位是否是对应字符串的16进制 */
- (BOOL)isEqualToByte:(NSString *)byteStr atIndex:(int)index
{
    if (byteStr.length != 2 || index >= self.length) return NO; //只能传入两个字符长度的字符串
    NSString *str = byteStr;
    
    NSMutableData *data = [NSMutableData data];
    NSRange range = NSMakeRange(0, 2);
    NSString* hexStr = [str substringWithRange:range];
    NSScanner* scanner = [NSScanner scannerWithString:hexStr];
    unsigned int intValue;
    [scanner scanHexInt:&intValue];
    [data appendBytes:&intValue length:1];
    
    return [[self subdataWithRange:NSMakeRange(index, 1)] isEqualToData:data];
}

/** 判断字符串中是否存在非法字符 */
+ (BOOL)isByteStringOK:(NSString *)byteString
{
    
    
    return YES;
}

@end
