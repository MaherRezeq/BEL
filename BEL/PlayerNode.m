//
//  Player.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "PlayerNode.h"

static NSString *const playerImageName = @"Spaceship";
static const CGFloat kDensity = 1.15;
static const CGFloat kMaxVelocity = 400;

@implementation PlayerNode

+ (NCNode *) makeObject
{
    NCNode *spriteNode = [self spriteNodeWithImageNamed:playerImageName];
    spriteNode.size = CGSizeMake(32, 32);
   
    spriteNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:spriteNode.size];
    [spriteNode.physicsBody setDensity:kDensity];
    [spriteNode.physicsBody setAllowsRotation:NO];
    
    // Physics properties
    [spriteNode.physicsBody setCategoryBitMask:kPlayerCategory];
    [spriteNode.physicsBody setContactTestBitMask:kObstacleCategory | kGroundCategory];
    [spriteNode.physicsBody setCollisionBitMask:kObstacleCategory | kGroundCategory];
    
    
    return spriteNode;
}
@end
