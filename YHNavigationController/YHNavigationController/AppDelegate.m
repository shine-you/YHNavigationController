//
//  AppDelegate.m
//  YHNavigationController
//
//  Created by Vincent hoover on 2018/1/6.
//  Copyright © 2018年 Wheat. All rights reserved.
//
/*
 A push 了 B（例如A->B）：
 1、如果B视图有一个自定义的leftBarButtonItem，则会显示这个自定义按钮；
 2、如果B没有自定义按钮，但是A视图的backBarButtonItem属性有自定义项，则显示这个自定义项；
 如果前2条都没有，则默认显示一个后退按钮，后退按钮的标题是A视图的标题
 
 
 补充:
 1,self.navigationController.navigationBar，而修改item的时候使用的是self.navigationItem。
 这两者有什么区别呢?self.navigationController.navigationBar，这种修改或者使用对于整个视图栈都是具有全局性的，再具体一点到一个控件上，就是说navigationbar是唯一的。 相似的理解，那么使用self.navigationItem的地方就意味着修改的是self的一个属性，也就意味着navigationItem只是当前视图的一个属性而已。
 
 2, 全局设置导航栏上返回按钮的图片
 [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"nav_back.png"]];
 [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"nav_another_back.png"]];
 
 The back indicator image is shown beside the back button.
 The back indicator transition mask image is used as a mask for content during push and pop transitions
 Note: These properties must both be set if you want to customize the back indicator image.
 
 
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window.rootViewController = ({
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[ViewController new]];
        
        [[UINavigationBar appearance] setBackIndicatorImage:[UIImage imageNamed:@"blackBack.png"]];
        [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"blackBack.png"]];
        
        nav;
    });
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
