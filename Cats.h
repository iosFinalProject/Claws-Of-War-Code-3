//
//  ViewController.h
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cats : NSObject <NSCoding,NSCopying>

@property (strong, nonatomic)    NSString *name;
@property (assign, nonatomic)    int maxLoyalty;
@property (assign, nonatomic)    int currLoyaltyCounter;
@property (assign, nonatomic)    int loyaltyThreshold;
@property (strong, nonatomic)    NSMutableArray *specificFood;
@property (strong, nonatomic)    NSMutableArray *specificItems;
@property (assign, nonatomic)    BOOL inClan; //boolean
@property (strong, nonatomic)    UIImage *imagePos1; //
@property (strong, nonatomic)    UIImage *currPositionalImage;
    //other imagePos
@property (assign, nonatomic)    BOOL onScreen; //boolean
@property (assign, nonatomic)    BOOL available; //boolean
@property (strong, nonatomic)    NSString* associatedItem;
@property (strong, nonatomic)     NSMutableArray *CatPositionPictures;



@end
