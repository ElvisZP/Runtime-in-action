//
//  UIViewController+Statistics.m
//  RuntimeInAction
//
//  Created by zhangpeng on 2016/11/24.
//  Copyright © 2016年 elviszp. All rights reserved.
//

#import "UIViewController+Statistics.h"
#import <objc/runtime.h>

@implementation UIViewController (Statistics)
+ (void)load
{
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(viewDidAppear:)), class_getInstanceMethod(self, @selector(el_viewDidAppear:)));
    method_exchangeImplementations(class_getInstanceMethod(self, @selector(viewDidDisappear:)), class_getInstanceMethod(self, @selector(el_viewDidDisappear:)));
}

- (void)el_viewDidAppear:(BOOL)animated
{
    [self el_viewDidAppear:animated];
    // 在这里添加进入页面统计代码
    // 友盟example: [MobClick beginLogPageView:NSStringFromClass([self class])];
}

- (void)el_viewDidDisappear:(BOOL)animated
{
    [self el_viewDidDisappear:animated];
    // 在这里添加离开页面统计代码
}
@end
