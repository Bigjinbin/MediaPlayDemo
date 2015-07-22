//
//  jbButton.h
//  block
//
//  Created by jb on 15/7/15.
//  Copyright (c) 2015年 jb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JbButton : UIButton

@property(nonatomic,copy) void(^action)(JbButton* btn);


@end
