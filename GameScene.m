//
//  GameScene.m
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright (c) 2016 nyu.edu. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKSpriteNode *back = [SKSpriteNode spriteNodeWithImageNamed:@"screen2a"];
    back.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    back.zPosition = -1;
    back.xScale = .40;
    back.yScale = .40;
    [self addChild: back];
    
    ////^^ Above Shit works
    
    
     SKSpriteNode *cat1 = [SKSpriteNode spriteNodeWithImageNamed:@"MT1"];
     cat1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
     //cat1.zPosition = 1;
     [self addChild: cat1];

    
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 45;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        sprite.zPosition = 1;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
