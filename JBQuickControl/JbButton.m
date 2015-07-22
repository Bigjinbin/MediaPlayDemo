//
//  jbButton.m
//  block
//
//  Created by jb on 15/7/15.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import "JbButton.h"

@implementation JbButton


-(instancetype)initWithFrame:(CGRect)frame{


    if (self = [super initWithFrame:frame]) {
        [self addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return self;
}


-(void)btnClick:(JbButton *)button{

    
    //判断block是否存在
    if (self.action) {
        
        self.action(button);
        
    }


}
@end
