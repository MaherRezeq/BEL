//
//  NCSpriteNode.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "NCNode.h"

@implementation NCNode

// Default implementation
+ (NCNode *) makeObject
{
     NCNode *spriteNode = [[self allocWithZone:NULL] init];
    return spriteNode;
}

@end
