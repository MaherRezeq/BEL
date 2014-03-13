//
//  GamePlayScene.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "GamePlayScene.h"
#import "Player.h"
#import "Obstacle.h"
@implementation GamePlayScene

- (id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
       
        [self setBackgroundColor:[SKColor colorWithRed:122.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1]];
        // Game Setup Woow
        
        NCSpriteNode *player =[Player makeObject];
        [player setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
        [self addChild:player];
        
        NCSpriteNode *obstacle =[Obstacle makeObject];
        [obstacle setPosition:CGPointMake(self.size.width/2, self.size.height/4)];
        [self addChild:obstacle];
        
    }

    return self;
}
@end
