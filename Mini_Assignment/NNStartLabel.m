//
//  NNStartLabel.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNStartLabel.h"

@implementation NNStartLabel

+ (NNStartLabel *) generateStartLabel{
    
    NNStartLabel *startLabel = [[NNStartLabel alloc] initWithFontNamed:@"Chalkduster"];
    startLabel.name = @"start";
    startLabel.fontSize = 30;
    startLabel.color = [UIColor blueColor];
    startLabel.text = @"Start Game";
    startLabel.position = CGPointMake(150, 235);
    startLabel.zPosition = 5;
    
    return startLabel;
}


@end
