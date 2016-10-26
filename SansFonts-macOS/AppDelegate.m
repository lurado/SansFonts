//
//  AppDelegate.m
//  SansFonts-macOS
//
//  Created by Julian Raschke on 25.09.16.
//  Copyright © 2016 Julian Raschke. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end


@implementation AppDelegate

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

- (IBAction)reportAnIssue:(id)sender
{
    [[NSWorkspace sharedWorkspace] openURL:[NSURL URLWithString:@"https://github.com/lurado/SansFonts/issues"]];
}

@end
