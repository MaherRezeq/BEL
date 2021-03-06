//
//  Obstacle.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "ObstacleNode.h"

static NSString *const obstacleImageName = @"Spaceship";

@implementation ObstacleNode

+ (NCNode *) makeObject
{
    NCNode *spriteNode = [self createSpriteNode];
    spriteNode.size = [self spriteSize];
    
    spriteNode.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:spriteNode.size];
    [spriteNode.physicsBody setAffectedByGravity:NO];
    [spriteNode.physicsBody setDynamic:NO];
    
    // Physics properties
    [spriteNode.physicsBody setCategoryBitMask:[self categoryBitMask]];
    [spriteNode.physicsBody setCollisionBitMask:[self collisionBitMask]];
    
    
    return spriteNode;
}

+ (NCNode *)createSpriteNode
{
    return [self spriteNodeWithImageNamed:obstacleImageName];
}

+ (NSInteger)categoryBitMask
{
    return kObstacleCategory;
}

+ (NSInteger)collisionBitMask
{
    return kPlayerCategory;
}

+ (CGSize) spriteSize
{
    return CGSizeMake(32, 32);
}
@end
