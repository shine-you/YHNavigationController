//
//  Test2ViewController.m
//  test1221
//
//  Created by Vincent hoover on 2018/1/6.
//  Copyright © 2018年 Wheat. All rights reserved.
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"三级";
    self.view.backgroundColor = [UIColor brownColor];
    
    UIBarButtonItem * backButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"VC设定" style:UIBarButtonItemStylePlain target:self action:@selector(action_back)];
    self.navigationItem.leftBarButtonItem = backButtonItem;
    
    NSLog(@"当前VC的leftBarButtonItem优先级大于上级的backBarButtonItem");
}

- (void)action_back{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
