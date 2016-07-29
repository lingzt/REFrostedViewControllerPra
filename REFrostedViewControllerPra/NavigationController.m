//
//  NavigationController.m
//  REFrostedViewControllerPra
//
//  Created by ling toby on 7/28/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//


#import "NavigationController.h"
#import "MenuViewController.h"
#import "UIViewController+REFrostedViewController.h"

@interface NavigationController ()

@end

@implementation NavigationController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognized:)]];
}

#pragma mark -
#pragma mark Gesture recognizer

- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController panGestureRecognized:sender];
}

@end
