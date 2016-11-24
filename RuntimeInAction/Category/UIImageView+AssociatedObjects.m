//
//  UIImageView+AssociatedObjects.m
//  RuntimeInAction
//
//  Created by zhangpeng on 2016/11/24.
//  Copyright © 2016年 elviszp. All rights reserved.
//

#import "UIImageView+AssociatedObjects.h"
#import <objc/runtime.h>

static char imageURLKey;

@implementation UIImageView (AssociatedObjects)

-(NSString *)imageUrl{
    return objc_getAssociatedObject(self, &imageURLKey);
}

-(void)setImageUrl:(NSString *)imageUrl{
    objc_setAssociatedObject(self, &imageURLKey, imageUrl, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
