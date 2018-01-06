//
//  ViewController.m
//  YHNavigationController
//
//  Created by Vincent hoover on 2018/1/6.
//  Copyright © 2018年 Wheat. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    TestViewController *tse = [[TestViewController alloc] init];
    [self.navigationController pushViewController:tse animated:YES];
    
}

@end
