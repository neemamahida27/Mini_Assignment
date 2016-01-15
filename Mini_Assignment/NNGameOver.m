//
//  NNGameOver.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNGameOver.h"

SKLabelNode *myLabel;

@implementation NNGameOver

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blueColor];
        
        myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.name = @"hello";
        myLabel.text = @"Game Over";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
        
        [self runAction:
         [SKAction sequence:@[
                              [SKAction waitForDuration:3.0], [SKAction runBlock:^{
             // 5
             SKTransition *reveal = [SKTransition flipHorizontalWithDuration:0.5];
             SKScene * myScene = [[NNMyScene alloc] initWithSize:self.size];
             [self.view presentScene:myScene transition: reveal]; }]
                              ]] ];
        
        NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
        self.finalScore = [prefs doubleForKey:@"finalScore"];
        
        SKLabelNode *scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        scoreLabel.text = [NSString stringWithFormat: @"Final Score: %3.0f", self.finalScore];
        scoreLabel.fontSize = 20;
        scoreLabel.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)-30);
        
        [self addChild:scoreLabel];

    }
    return self;
}

@end
