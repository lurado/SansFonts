//
//  AppDelegate.m
//  SansFonts
//
//  Created by Julian Raschke on 09.09.15.
//  Copyright © 2015 Julian Raschke. All rights reserved.
//

#import "AppDelegate.h"
#import <SafariServices/SafariServices.h>


@implementation AppDelegate


- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSString *identifier =
        [[NSBundle mainBundle].bundleIdentifier stringByAppendingString:@".content-blocker"];
    
    [SFContentBlockerManager reloadContentBlockerWithIdentifier:identifier
                                              completionHandler:^(NSError *error) {
        #ifdef DEBUG
        NSLog(@"Error: %@", error);
        #endif
    }];
}

@end
