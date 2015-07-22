//
//  UIView+JBQuickControl.m
//  block
//
//  Created by jb on 15/7/15.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import "UIView+JBQuickControl.h"

@implementation UIView (JBQuickControl)

-(UIButton*)addSystemButtonWithFram:(CGRect)fram title:(NSString *)title action:(void (^)(JbButton *))action{
    
    JbButton *button = [JbButton buttonWithType:UIButtonTypeSystem];
    button.frame = fram;
    [button setTitle:title forState:UIControlStateNormal];
    
    
    button.action = action;
    
    [self addSubview:button];
    
    return button;
    
}


-(UITextField*)addtextFieldWithFram:(CGRect)fram
                              style:(UITextBorderStyle)style
                           delegate:(id)delegate{

    UITextField *textField = [[UITextField alloc]initWithFrame:fram];
    
    textField.borderStyle = style;
    
    textField.delegate = delegate;
    
    
    return textField;

}

-(UIButton*)addCustomButtonWithFram:(CGRect)fram title:(NSString *)title withBackground:(UIImage*)backgroundImage withImage:(UIImage*)image action:(void (^)(JbButton *))action{
    
    JbButton *button = [JbButton buttonWithType:UIButtonTypeCustom];
    button.frame = fram;
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button setImage:image forState:UIControlStateNormal];
    
    button.action = action;
    
    [self addSubview:button];
    
    return button;
    
}


-(UIImageView *)addImageViewWithFrame:(CGRect)frame image:(UIImage *)image{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame = frame;
    imageView.image = image;
    
    return imageView;
}

//label的快速创建
-(UILabel *)addLabelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAliganment:(NSTextAlignment)textAliganment
{
    UILabel *label = [[UILabel alloc]init];
    
    label.frame = frame;
    
    label.text = text;
    
    //判断是不是UIColor类型，如果是，才去改变label的颜色
    if ([textColor isKindOfClass:[UIColor class]]) {
        label.textColor = textColor;
    }
    
    label.font = font;
    
    //是否存在textAliganment
    if (textAliganment) {
        label.textAlignment = textAliganment;
    }
    
    return label;
}



@end
