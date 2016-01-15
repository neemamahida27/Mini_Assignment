//
//  NNGame.h
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "NNBug.h"
#import "NNBomb.h"
#import "NNTimeLabel.h"
#import "NNScoreLabel.h"
#import "NNGameOver.h"
#import "NNBackground.h"

@interface NNGame : SKScene

@property (assign)double score;
@property int xRandom;
@property int yRandom;

@property (strong,nonatomic)NNBackground *background;
@property (strong,nonatomic)NNScoreLabel *scoreLabel;
@property (strong,nonatomic)NNTimeLabel *timeLabel;

@property (assign)double finalScore;

//@property CFTimeInterval lastUpdateTimeInterval;

@property (nonatomic)NSTimeInterval lastCheckTimeInterval;
@property (nonatomic)NSTimeInterval lastUpdateTimeInterval;
@property (nonatomic)NSTimeInterval totalTimePassed;
@property (nonatomic) int timepass;


@end
