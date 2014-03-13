//
//  Ground.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "Ground.h"

static NSString *const groundImageNamed = @"Spaceship";

@implementation Ground


+ (NCSpriteNode *)createSpriteNode
{
    return [self spriteNodeWithColor:[SKColor colorWithRed:80.0/255.0 green:120.0/255.0 blue:200.0/255.0 alpha:1] size:[self spriteSize]];
}

+ (NSInteger)categoryBitMask
{
    return kGroundCategory;
}

+ (NSInteger)collisionBitMask
{
    return kPlayerCategory;
}

+ (CGSize) spriteSize
{
    return CGSizeMake(320, 32);
}
@end
