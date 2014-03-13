//
//  Obstacle.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "Obstacle.h"

static NSString *const playerImageName = @"Spaceship";

@implementation Obstacle

+ (NCSpriteNode *) makeObject
{
    NCSpriteNode *spriteNode = [self spriteNodeWithImageNamed:playerImageName];
    spriteNode.size = CGSizeMake(32, 32);
    
    spriteNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:spriteNode.size];
    [spriteNode.physicsBody setAffectedByGravity:NO];
    [spriteNode.physicsBody setDynamic:NO];
    
    // Physics properties
    [spriteNode.physicsBody setCategoryBitMask:kObstacleCategory];
    [spriteNode.physicsBody setCollisionBitMask:kPlayerCategory];
    
    
    return spriteNode;
}
@end
