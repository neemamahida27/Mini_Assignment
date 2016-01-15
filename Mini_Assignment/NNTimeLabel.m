//
//  NNTimeLabel.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNTimeLabel.h"

@implementation NNTimeLabel


+ (NNTimeLabel *) generateTimeLabel{
    
    NNTimeLabel *timeLabel = [[NNTimeLabel alloc] initWithFontNamed:@"Chalkduster"];
    timeLabel.fontSize = 15;
    timeLabel.color = [UIColor blackColor];
    // scoreLabel.text = @"Score";
    timeLabel.position = CGPointMake(250, 450);
    timeLabel.zPosition = 5;
    
    return timeLabel;

}
@end
