//
//  AppDelegate.h
//  tabBarTutorial
//
//  Created by Rockstar. on 11/18/14.
//  Copyright (c) 2014 Gabe Morales. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate, UITabBarDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITabBarController *tabBarController;


@end

