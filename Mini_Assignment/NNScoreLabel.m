//
//  NNScoreLabel.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNScoreLabel.h"

@implementation NNScoreLabel

+ (NNScoreLabel *) generateScore{
    NNScoreLabel *scoreLabel = [[NNScoreLabel alloc] initWithFontNamed:@"Chalkduster"];
    scoreLabel.fontSize = 15;
    scoreLabel.color = [UIColor blackColor];
   // scoreLabel.text = @"Score";
    scoreLabel.position = CGPointMake(45, 450);
    scoreLabel.zPosition = 5;
    
    return scoreLabel;

}


@end
