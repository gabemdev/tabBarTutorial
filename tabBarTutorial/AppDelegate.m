//
//  AppDelegate.m
//  tabBarTutorial
//
//  Created by Rockstar. on 11/18/14.
//  Copyright (c) 2014 Gabe Morales. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //call tabBarMethod
    [self setTabBarControllerWithItems];
    
    _window.rootViewController = _tabBarController;
    _window.backgroundColor = [UIColor whiteColor];
    
    [_window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - TabBarController
- (void)setTabBarControllerWithItems {
    _tabBarController = [[UITabBarController alloc] init];
    [_tabBarController.tabBar setTintColor: [UIColor whiteColor]];
    UITabBar *tabBar = [UITabBar appearance];
    [tabBar setBarTintColor:[UIColor blackColor]];
    
    //Fist tab bar item
    UIViewController *view1 = [[FirstViewController alloc] init];
    UINavigationController *navFirst = [[UINavigationController alloc] initWithRootViewController:view1];
    [view1.tabBarItem setImage:[[UIImage imageNamed:@"more-icon-notification"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [view1.tabBarItem setSelectedImage:[[UIImage imageNamed:@"more-icon-notification-active"] imageWithRenderingMode:UIImageRenderingModeAutomatic]];
    [view1.tabBarItem setTitle:@"View 1"];
    
    //Second tab bar item
    UIViewController *view2 = [[SecondViewController alloc] init];
    UINavigationController *navSecond = [[UINavigationController alloc] initWithRootViewController:view2];
    [view2.tabBarItem setImage:[[UIImage imageNamed:@"more-icon-invite"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [view2.tabBarItem setSelectedImage:[[UIImage imageNamed:@"more-icon-invite-active"] imageWithRenderingMode:UIImageRenderingModeAutomatic]];
    [view2.tabBarItem setTitle:@"View 2"];

    _tabBarController.viewControllers = @[navFirst, navSecond];
    
}

@end
