//
//  NNScoreLabel.h
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface NNScoreLabel : SKLabelNode


+ (NNScoreLabel *) generateScore;

-(void)setScore:(double)s;


@end
