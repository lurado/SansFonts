//
//  ActionRequestHandler.m
//  content-blocker
//
//  Created by Julian Raschke on 09.09.15.
//  Copyright © 2015 Julian Raschke. All rights reserved.
//

#import "ActionRequestHandler.h"


@interface ActionRequestHandler ()

@end


@implementation ActionRequestHandler

- (void)beginRequestWithExtensionContext:(NSExtensionContext *)context
{
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"blockerList" withExtension:@"json"];
    NSItemProvider *attachment = [[NSItemProvider alloc] initWithContentsOfURL:URL];
    
    NSExtensionItem *item = [[NSExtensionItem alloc] init];
    item.attachments = @[attachment];
    
    [context completeRequestReturningItems:@[item] completionHandler:nil];
}

@end
