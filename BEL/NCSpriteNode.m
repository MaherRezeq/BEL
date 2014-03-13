//
//  NCSpriteNode.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "NCSpriteNode.h"

@implementation NCSpriteNode

// Default implementation
+ (NCSpriteNode *) makeObject
{
     NCSpriteNode *spriteNode = [[self allocWithZone:NULL] init];
    return spriteNode;
}

@end
