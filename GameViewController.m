//
//  GameViewController.m
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright (c) 2016 nyu.edu. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*UIImageView *background = [[UIImageView alloc] initWithFrame: CGRectMake(50,50,20,20)];
    background.image=[UIImage imageNamed:@"scene2a"];
    [self.view addSubview:background];*/
    //background.size
    //SKScene *backgroundImage = [GameScene ];
    //backgroundImage.size = ;

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.allowsTransparency = YES; /////// ADDED THIS
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    skView.layer.zPosition = 2;
    
    //[self.view addSubview: skView];
    
    // Create and configure the scene.
    GameScene *scene = [GameScene nodeWithFileNamed:@"GameScene"];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
