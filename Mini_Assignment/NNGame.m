//
//  NNGame.m
//  Mini_Assignment
//
//  Created by Neema Mahida on 2014-11-06.
//  Copyright (c) 2014 Neema Mahida. All rights reserved.
//

#import "NNGame.h"

SKLabelNode *myLabel;
float upperBound = 150;
float lowerBound = 100;
NSUserDefaults *prefs;

@implementation NNGame

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor brownColor];
         prefs = [NSUserDefaults standardUserDefaults];
        
        self.totalTimePassed = 0;
        
        self.background = [NNBackground generateBackground];
        
        self.score = 0;
        self.scoreLabel = [NNScoreLabel generateScore];
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %3.0f",self.score];
        
       self.timeLabel = [NNTimeLabel generateTimeLabel];
        self.timeLabel.text = [NSString stringWithFormat:@"Time: %3.0f",self.score];
        
        [self runAction:[SKAction repeatActionForever:
         [SKAction sequence:@[
                              [SKAction waitForDuration:1.0], [SKAction runBlock:^{
                                self.totalTimePassed = self.totalTimePassed + 1;
                                self.timeLabel.text = [NSString stringWithFormat:@"Time: %3.0f",self.totalTimePassed];
             [self addNodes];
             if(self.totalTimePassed == 30)
             {
                 [self changeToGameScene];
                 
             }
         }
        ]]]]];
        
        [self addChild:self.background];
        [self addChild:self.scoreLabel];
        [self addChild:self.timeLabel];
        
        

        
    }
    return self;
}

-(void)addNodes{
    
    NNBug *bug = [[NNBug alloc]init];
    NNBomb *bomb = [[NNBomb alloc]init];
    bug.name = @"bug";
    bomb.name = @"bomb";
    [self addChild:bug];
    [self addChild:bomb];

}

-(void)removeFromParent
{
    // NNBug *bug = [[NNBug alloc]init];
    //NNBomb *bomb = [[NNBomb alloc]init];
    
    [[self childNodeWithName:@"bug"] removeFromParent];
    [[self childNodeWithName:@"bomb"] removeFromParent];
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    //NNBug *bug = (NNBug *)[self childNodeWithName:bugName];
    
    UITouch *touch = [touches anyObject];
    SKSpriteNode *touchedNode = (SKSpriteNode *)[self nodeAtPoint:[touch locationInNode:self]];
    
    if (touchedNode.name == bugName) {
        [self removeFromParent];
        self.score++;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %3.0f",self.score];
        //[self addNodes];
        
    }
    else if (touchedNode.name == bombName){
        [self removeFromParent];
        self.score--;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %3.0f",self.score];
        //[self addNodes];
    }
    
}

-(void) changeToGameScene
{
    
    [prefs setDouble:self.score forKey:@"finalScore"];
    NNGameOver *gameOver = [NNGameOver sceneWithSize:self.size];
    SKTransition *reveal = [SKTransition revealWithDirection:SKTransitionDirectionLeft duration:0.09];
    [self.scene.view presentScene:gameOver transition:reveal];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    CFTimeInterval timeSinceLast = currentTime - self.lastUpdateTimeInterval;
    self.lastUpdateTimeInterval = currentTime;

    if(timeSinceLast > 1)
    {
            timeSinceLast = 1.0 / 60.0;
        self.lastUpdateTimeInterval = currentTime;

        
   }
}


@end
