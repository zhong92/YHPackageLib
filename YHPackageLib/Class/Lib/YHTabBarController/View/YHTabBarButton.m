//
//  YHTabBarButton.m
//  YHPackageLib
//
//  Created by harry on 2018/4/3.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "YHTabBarButton.h"

static const CGFloat imageHeightScale = 0.6;
static const CGFloat margin = 5;

@implementation YHTabBarButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor greenColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        // 设置默认字体大小
        self.titleLabel.font = [UIFont systemFontOfSize:13];
    }
    return self;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGRect titleRect;
    CGFloat titleX = 0;
    CGFloat titleY = contentRect.size.height * imageHeightScale;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = contentRect.size.height - titleY - margin;
    titleRect = CGRectMake(titleX, titleY, titleW, titleH);
    return titleRect;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    // 图片的现实
    CGRect imageRect;
    CGFloat imgH = contentRect.size.height * imageHeightScale - margin;
    CGFloat imgW = imgH;
    CGFloat imgX = (contentRect.size.width - imgW) * 0.5;
    CGFloat imgY = margin;
    
    imageRect = CGRectMake(imgX, imgY, imgW, imgH);
    return imageRect;
}

@end
