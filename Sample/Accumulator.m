//
//  Accumulator.m
//  Sample
//
//  Created by Jang Young bin on 2015. 9. 17..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator
{
    int value;
}

@synthesize value = value;

-(instancetype)init {
    self = [super init];
    
    if (self) {
        value = 1;
    }
    
    return self;
}

-(void)increase {
    value++;
}

@end
