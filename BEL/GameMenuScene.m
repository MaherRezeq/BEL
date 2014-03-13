//
//  GameMenuScene.m
//  BEL
//
//  Created by RezeqM on 3/12/14.
//  Copyright (c) 2014 NativeNCreative. All rights reserved.
//

#import "GameMenuScene.h"
#import "GamePlayScene.h"
@interface GameMenuScene()
{
    SKSpriteNode *_startGameButton;
    GamePlayScene *_gamePlayScene;

}
@end

@implementation GameMenuScene

- (id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        
        [self setBackgroundColor:[SKColor colorWithRed:80.0/255.0 green:120.0/255.0 blue:255.0/255.0 alpha:1]];

        // Game name label
        SKLabelNode * label = [SKLabelNode labelNodeWithFontNamed:@"Arcade"];
        label.text = @"Behind Enemy Lines";
        label.fontSize = 20;
        label.position = CGPointMake(CGRectGetMidX(self.frame),
                                     CGRectGetMidY(self.frame)+CGRectGetMidY(self.frame)/2);
        [self addChild:label];
       
        _startGameButton = [SKSpriteNode spriteNodeWithColor:[SKColor colorWithWhite:1 alpha:1] size:CGSizeMake(110, 60)];
        [_startGameButton setColor:[SKColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1]];
        [_startGameButton setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
        // Add button to the scene
        [self addChild:_startGameButton];
        
        
        SKLabelNode * start = [SKLabelNode labelNodeWithFontNamed:@"Arcade"];
        start.text = @"Start";
        start.fontSize = 30;
        // Add label to the button
        [_startGameButton addChild:start];
        
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if (node == _startGameButton) {
        SKTransition *transition = [SKTransition flipHorizontalWithDuration:0.4];
        _gamePlayScene = [[GamePlayScene alloc] initWithSize:self.size];
        [self.scene.view presentScene:_gamePlayScene transition:transition];
    }

}
@end
