//
//  UIView+JBExtension.h
//  block
//
//  Created by jb on 15/7/15.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JBExtension)


@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
-(void)setCornerRadius:(CGFloat)radius;

@end
