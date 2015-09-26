//
//  ViewController.m
//  SansFonts
//
//  Created by Julian Raschke on 26.09.15.
//  Copyright © 2015 Julian Raschke. All rights reserved.
//

#import "ViewController.h"


static CGFloat const kFullRotationThreshold = 768;
static CGFloat const kRotationThreshold = 400;


@implementation ViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    CGSize size = self.view.bounds.size;
    
    if (MIN(size.width, size.height) > kFullRotationThreshold) {
        return UIInterfaceOrientationMaskAll;
    }
    else if (MIN(size.width, size.height) > kRotationThreshold) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }
    else {
        return UIInterfaceOrientationMaskPortrait;
    }
}

@end
