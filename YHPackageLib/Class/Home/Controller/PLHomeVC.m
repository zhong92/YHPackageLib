//
//  PLHomeVC.m
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "PLHomeVC.h"
#import "NSData+YH.h"

@interface PLHomeVC ()

@end

@implementation PLHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    NSData *data = [NSData dataWithBytesString:@"1122e4a767858686akh"];
    NSLog(@"%@", data);
    
    
//    [data isEqualToData:<#(nonnull NSData *)#>]
    
    
//    Byte *bts = data.bytes;
    
    if ([data isEqualToByte:@"12" atIndex:1]) {
        NSLog(@"yes");
    } else{
        NSLog(@"no");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.tabBarController setSelectedIndex:2];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
