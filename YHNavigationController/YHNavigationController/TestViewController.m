//
//  TestViewController.m
//  test1221
//
//  Created by Vincent hoover on 2018/1/6.
//  Copyright © 2018年 Wheat. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"二级";
    self.view.backgroundColor = [UIColor redColor];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    Test2ViewController *tes = [Test2ViewController new];
    [self.navigationController pushViewController:tes animated:YES];

}

@end
