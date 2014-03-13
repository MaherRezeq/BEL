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
#import "Ground.h"
static const CGFloat kMaxVelocity = 400;
static const CGFloat kGravity = -10;

@interface GamePlayScene()
{
    NCSpriteNode *_player;
}
@end
@implementation GamePlayScene

- (id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
       
        [self setBackgroundColor:[SKColor colorWithRed:122.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1]];
        // Game Setup Woow
        
        [self.physicsWorld setGravity:CGVectorMake(0, kGravity)];
        [self.physicsWorld setContactDelegate:self];
        
        _player =[Player makeObject];
        [_player setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
        [self addChild:_player];
        
        NCSpriteNode *obstacle =[Obstacle makeObject];
        [obstacle setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
        [self addChild:obstacle];
        
        NCSpriteNode *ground =[Ground makeObject];
        [ground setPosition:CGPointMake(self.size.width/2, CGRectGetHeight(ground.frame)/2)];
        [self addChild:ground];
        
    }

    return self;
}


- (void)update:(NSTimeInterval)currentTime
{
    if (_player.physicsBody.velocity.dy > kMaxVelocity) {
        [_player.physicsBody setVelocity:CGVectorMake(_player.physicsBody.velocity.dx, kMaxVelocity)];
    }
}

- (void)didBeginContact:(SKPhysicsContact *)contact
{

}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_player.physicsBody setVelocity:CGVectorMake(_player.physicsBody.velocity.dx, kMaxVelocity)];
}

@end
