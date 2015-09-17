//
//  ACViewController.m
//  Sample
//
//  Created by Jang Young bin on 2015. 9. 17..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "ACViewController.h"
#import "Accumulator.h"

@interface ACViewController ()

@end

@implementation ACViewController
{
    Accumulator *accumulator;
    UILabel *label;
    UIButton *button;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    accumulator = [[Accumulator alloc] init];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
    [label setText:@"1"];
    [label setTextAlignment:NSTextAlignmentRight];
    [[self view] addSubview:label];
    
    button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setFrame:CGRectMake(70, 0, 60, 44)];
    [button setTitle:@"+" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonTapped:)
     forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonTapped:(id)aSender
{
    [accumulator increase];
    [label setText:[NSString stringWithFormat:@"%d", [accumulator value]]];
}

- (void) dealloc {
    [accumulator release];
    [label release];
    [button release];
    
    [super dealloc];
}

@end
