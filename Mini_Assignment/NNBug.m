//
//  NNBug.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNBug.h"

@implementation NNBug
-(instancetype)init
{
    int xValue = arc4random() % 350;;
    int yValue = arc4random() % 350;;
    self = [super initWithImageNamed:@"bug"];
    {
       // self.anchorPoint =
        self.name = bugName;
        self.position = CGPointMake(xValue , yValue);
       // self.zPosition = 500;
    }
    return self;
}

@end
