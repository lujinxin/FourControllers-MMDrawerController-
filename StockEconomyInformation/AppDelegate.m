//
//  AppDelegate.m
//  StockEconomyInformation
//
//  Created by 陆金鑫 on 15/12/24.
//  Copyright © 2015年 陆金鑫. All rights reserved.
//

#import "AppDelegate.h"
#import "MMDrawerController.h"
#import "MainTabBarController.h"
#import "LeftViewController.h"
#import "RightViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //创建左侧控制器
//    LeftViewController *leftCtrl = [[LeftViewController alloc] init];
    UIStoryboard *leftSB = [UIStoryboard storyboardWithName:@"Left" bundle:nil];
    LeftViewController *leftCtrl = [leftSB instantiateViewControllerWithIdentifier:@"LeftViewController"];
    
    //创建中间控制器
    MainTabBarController *mainCtrl = [[MainTabBarController alloc] init];
    
    //创建右侧控制器
//    RightViewController *rightCtrl = [[RightViewController alloc] init];
    UIStoryboard *rightSB = [UIStoryboard storyboardWithName:@"Right" bundle:nil];
    LeftViewController *rightCtrl = [rightSB instantiateViewControllerWithIdentifier:@"RightViewController"];
    
    
    //创建 MMDrawerCtrl
    MMDrawerController *drawCtrl = [[MMDrawerController alloc] initWithCenterViewController:mainCtrl leftDrawerViewController:leftCtrl rightDrawerViewController:rightCtrl];
    
    //设置左侧和右侧的宽度
    [drawCtrl setMaximumLeftDrawerWidth:260];
    [drawCtrl setMaximumRightDrawerWidth:260];
    
    
     //设置手势作用域
     [drawCtrl setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeBezelPanningCenterView];
     [drawCtrl setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    
    //window 管理 MMDrawerCtrl
    self.window.rootViewController = drawCtrl;
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
