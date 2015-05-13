//
//  AppDelegate.m
//  MovesSDKDemo
//
//  Created by Vito on 13-7-15.
//  Copyright (c) 2013年 vito. All rights reserved.
//

#import "AppDelegate.h"
#import "MovesAPI.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[MovesAPI sharedInstance]
                                        //setShareMovesOauthClientId:@"ykH4iF0N1Y7S2ZLWd7WnTZOZmTep0TBY"
                                        setShareMovesOauthClientId:@"7haMNN11y6yWV0K2BX4qREDVTE8xLSzg"
                                        //oauthClientSecret:@"hO9puM5kuqaR8F02d80e0acAtCoXZ302PJL8DbFZf6Sx6HrPzkp7aN0J3sBR1I9v"
                                        oauthClientSecret:@"uuy91R2RwCqk4G7Bf5MqCE3wZZlY6OWW83tz394Wt4PT7zTbU1H7KkqYgO6vJ36T"
                                        callbackUrlScheme:@"MovesSDKDemo"];
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([[MovesAPI sharedInstance] canHandleOpenUrl:url]) {
        return YES;
    }
    // Other 3rdParty Apps Handle Url Method...
    
    
    return NO;
}

@end