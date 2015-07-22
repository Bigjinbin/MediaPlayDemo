//
//  UIView+JBQuickControl.h
//  block
//
//  Created by jb on 15/7/15.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "jbButton.h"
@interface UIView (JBQuickControl)

-(UIButton*)addSystemButtonWithFram:(CGRect)fram
                         title:(NSString*)title
                        action:(void (^)(JbButton* btn))action;


-(UIButton*)addCustomButtonWithFram:(CGRect)fram title:(NSString *)title withBackground:(UIImage*)backgroundImage withImage:(UIImage*)image action:(void (^)(JbButton *))action;



-(UITextField*)addtextFieldWithFram:(CGRect)fram
                              style:(UITextBorderStyle)style
                           delegate:(id)delegate;

-(UIImageView *)addImageViewWithFrame:(CGRect)frame image:(UIImage *)image;

-(UILabel *)addLabelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAliganment:(NSTextAlignment)textAliganment;




@end
