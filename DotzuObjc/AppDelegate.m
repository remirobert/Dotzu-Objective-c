//
//  AppDelegate.m
//  DotzuObjc
//
//  Created by Remi Robert on 18/02/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

#import "AppDelegate.h"
@import Dotzu;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [[Dotzu sharedManager] displayWindow];
    return YES;
}

@end
