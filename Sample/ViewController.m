//
//  ViewController.m
//  Sample
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "ViewController.h"
#import "ACViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    ACViewController *viewController1;
    ACViewController *viewController2;
    ACViewController *viewController3;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    viewController1 = [[[ACViewController alloc] init] autorelease];
    [self displayContentController:viewController1];
    viewController1.view.frame = CGRectMake(10, 100, 200, 50);
    
    viewController2 = [[[ACViewController alloc] init] autorelease];
    [self displayContentController:viewController2];
    viewController2.view.frame = CGRectMake(10, 200, 200, 50);
    
    viewController3 = [[[ACViewController alloc] init] autorelease];
    [self displayContentController:viewController3];
    viewController3.view.frame = CGRectMake(10, 300, 200, 50);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) displayContentController: (UIViewController*) content {
    [self addChildViewController:content];
    [self.view addSubview:content.view];
    [content didMoveToParentViewController:self];
}

@end
