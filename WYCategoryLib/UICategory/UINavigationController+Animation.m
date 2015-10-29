//
//  UINavigationController+Animation.m
//  TestProject
//
//  Created by tom on 13-12-5.
//  Copyright (c) 2013年 tom. All rights reserved.
//

#import "UINavigationController+Animation.h"
#import <QuartzCore/QuartzCore.h>

@implementation UINavigationController (Animation)

const float WYNavigationControllerAnimationDuration = 1.3;

- (id)rootViewController {
    return [self.childViewControllers firstObject];
}

@end
