//
//  DEMORootViewController.m
//  REFrostedViewControllerPra
//
//  Created by ling toby on 7/28/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
- (void)awakeFromNib
{
    self.contentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"contentController"];
    self.menuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"menuController"];
}
@end
