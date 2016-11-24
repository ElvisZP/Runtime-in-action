//
//  ViewController.m
//  RuntimeInAction
//
//  Created by zhangpeng on 2016/11/24.
//  Copyright © 2016年 elviszp. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+AssociatedObjects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.imageUrl = @"http://xxxx.jpg";
    NSLog(@"%@", imageView.imageUrl);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
