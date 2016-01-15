//
//  NNBomb.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNBomb.h"

@implementation NNBomb
-(instancetype)init
{
    int xValue = arc4random() % 350;
    int yValue = arc4random() % 400;
    self = [super initWithImageNamed:@"bomb"];
    {
        // self.anchorPoint =
        self.name = bombName;
        NSLog(@"%d , %d",xValue,yValue);
        self.position = CGPointMake(xValue, yValue);
        // self.zPosition = 500;
    }
    return self;
}



@end
