//
//  StartViewController.m
//  Claws
//
//  Created by Libby Goss on 4/24/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "StartViewController.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "Cats.h"


@interface StartViewController ()

@end

@implementation StartViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    /*[GameData sharedGameData].allCatsInGame = [[NSMutableDictionary alloc] init];
    
    Cats *Birch = [[Cats alloc] init];
    Birch.name = @"Birch";
    Birch.currLoyaltyCounter = 10;
    Birch.loyaltyThreshold = 15;
    Birch.maxLoyalty = 25;
    Birch.specificFood = [[NSMutableArray alloc] init];
    Birch.specificItems = [[NSMutableArray alloc] init];
    Birch.inClan = false; 
    Birch.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Birch forKey:@"Birch"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Maple = [[Cats alloc] init];
    Maple.name = @"Maple";
    Maple.currLoyaltyCounter = 10;
    Maple.loyaltyThreshold = 25;
    Maple.maxLoyalty = 35;
    Maple.specificFood = [[NSMutableArray alloc] init];
    Maple.specificItems = [[NSMutableArray alloc] init];
    Maple.inClan = false;
    Maple.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Maple forKey:@"Maple"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Rowan = [[Cats alloc] init];
    Rowan.name = @"Rowan";
    Rowan.currLoyaltyCounter = 10;
    Rowan.loyaltyThreshold = 30;
    Rowan.maxLoyalty = 45;
    Rowan.specificFood = [[NSMutableArray alloc] init];
    Rowan.specificItems = [[NSMutableArray alloc] init];
    Rowan.inClan = false;
    Rowan.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Rowan forKey:@"Rowan"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Lizard = [[Cats alloc] init];
    Lizard.name = @"Lizard";
    Lizard.currLoyaltyCounter = 10;
    Lizard.loyaltyThreshold = 25;
    Lizard.maxLoyalty = 35;
    Lizard.specificFood = [[NSMutableArray alloc] init];
    Lizard.specificItems = [[NSMutableArray alloc] init];
    Lizard.inClan = false;
    Lizard.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Lizard forKey:@"Lizard"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cloud = [[Cats alloc] init];
    Cloud.name = @"Cloud";
    Cloud.currLoyaltyCounter = 10;
    Cloud.loyaltyThreshold = 17;
    Cloud.maxLoyalty = 22;
    Cloud.specificFood = [[NSMutableArray alloc] init];
    Cloud.specificItems = [[NSMutableArray alloc] init];
    Cloud.inClan = false;
    Cloud.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cloud forKey:@"Cloud"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Pebble = [[Cats alloc] init];
    Pebble.name = @"Pebble";
    Pebble.currLoyaltyCounter = 10;
    Pebble.loyaltyThreshold = 40;
    Pebble.maxLoyalty = 45;
    Pebble.specificFood = [[NSMutableArray alloc] init];
    Pebble.specificItems = [[NSMutableArray alloc] init];
    Pebble.inClan = false;
    Pebble.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Pebble forKey:@"Pebble"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Sparrow = [[Cats alloc] init];
    Sparrow.name = @"Sparrow";
    Sparrow.currLoyaltyCounter = 10;
    Sparrow.loyaltyThreshold = 30;
    Sparrow.maxLoyalty = 33;
    Sparrow.specificFood = [[NSMutableArray alloc] init];
    Sparrow.specificItems = [[NSMutableArray alloc] init];
    Sparrow.inClan = false;
    Sparrow.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Sparrow forKey:@"Sparrow"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Lily = [[Cats alloc] init];
    Lily.name = @"Lily";
    Lily.currLoyaltyCounter = 10;
    Lily.loyaltyThreshold = 35;
    Lily.maxLoyalty = 40;
    Lily.specificFood = [[NSMutableArray alloc] init];
    Lily.specificItems = [[NSMutableArray alloc] init];
    Lily.inClan = false;
    Lily.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Lily forKey:@"Lily"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cinder = [[Cats alloc] init];
    Cinder.name = @"Cinder";
    Cinder.currLoyaltyCounter = 10;
    Cinder.loyaltyThreshold = 27;
    Cinder.maxLoyalty = 35;
    Cinder.specificFood = [[NSMutableArray alloc] init];
    Cinder.specificItems = [[NSMutableArray alloc] init];
    Cinder.inClan = false;
    Cinder.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cinder forKey:@"Cinder"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cooper = [[Cats alloc] init];
    Cooper.name = @"Cooper";
    Cooper.currLoyaltyCounter = 10;
    Cooper.loyaltyThreshold = 40;
    Cooper.maxLoyalty = 50;
    Cooper.specificFood = [[NSMutableArray alloc] init];
    Cooper.specificItems = [[NSMutableArray alloc] init];
    Cooper.inClan = false;
    Cooper.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cooper forKey:@"Cooper"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Oak = [[Cats alloc] init];
    Oak.name = @"Oak";
    Oak.currLoyaltyCounter = 10;
    Oak.loyaltyThreshold = 20;
    Oak.maxLoyalty = 35;
    Oak.specificFood = [[NSMutableArray alloc] init];
    Oak.specificItems = [[NSMutableArray alloc] init];
    Oak.inClan = false;
    Oak.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Oak forKey:@"Oak"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Tawny = [[Cats alloc] init];
    Tawny.name = @"Rowan";
    Tawny.currLoyaltyCounter = 10;
    Tawny.loyaltyThreshold = 12;
    Tawny.maxLoyalty = 24;
    Tawny.specificFood = [[NSMutableArray alloc] init];
    Tawny.specificItems = [[NSMutableArray alloc] init];
    Tawny.inClan = false;
    Tawny.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Tawny forKey:@"Tawny"];
    ////////////////////////////////////////////////////////////////////////////////
    
    */
    
    
    

    
    
    //ADD INITIAL ITEMS TO GAMEDATA, COPY GAMEDATA TO CURRENT DATA...ALSO HERE
    //THEN, go to viewdidoad of game scene and ADD ITEMS AND CATS FROM CURRENT DATA.
    
    highScore1 = [GameData sharedGameData].highScore;
    NSArray *posArray1 = @[@150, @150];
    //[[GameData sharedGameData].CatsAndPosOnScreen removeAllObjects];
    //[GameData sharedGameData].CatsAndPosOnScreen = [[NSMutableDictionary alloc]init];
    //[GameData sharedGameData].ItemsAndPosOnScreen = [[NSMutableDictionary alloc]init];
    
    
    
    
    //[[GameData sharedGameData].CatsAndPosOnScreen setObject:posArray1 forKey:@"MT1"]; //// INITIAL DATA
    //// ^^ the key will actually be a cat object, not just a string literal of the name...
    
    //[[GameData sharedGameData].ItemsAndPosOnScreen setObject: posArray1 forKey:@"CatBed"]; /// INITIAL //// DATA ^^ the key will actually be an item object
    
    
    //Cats *catToAddOnScreen = [[GameData sharedGameData].allCatsInGame objectForKey:@"Lizard"];
    [[GameData sharedGameData].CatsAndPosOnScreen setObject:posArray1 forKey:@"Lizard"];  //<---- LINE WITH TROUBLE. copywithzone
    
    // MUY IMPORTANTE BELOWWWWWWWW
    
    // ^^ PRevious two lines....instead of actual cat and position, just use the cat's name as key...instead of actual cat object. much simpler
    [[GameData sharedGameData].ItemsAndPosOnScreen setObject: posArray1 forKey:@"CatBed"];
    
    
    currCatsAndPosOnScreen = [NSMutableDictionary dictionaryWithDictionary:[GameData sharedGameData].CatsAndPosOnScreen];
    
    currItemsAndPosOnScreen = [NSMutableDictionary dictionaryWithDictionary:[GameData sharedGameData].ItemsAndPosOnScreen];
    
    food1 = [GameData sharedGameData].isFood;
    

    ////////////////////////// BEGINNING ACTUAL START-UP SCREEN LOGIC
    
    // FIRST....DETERMINE IF ANY CATS CURRENTLY ON SCREEN NEED TO LEAVE
    
    int howManyCatsOnScreen = [currCatsAndPosOnScreen count];
    NSMutableArray *catsCurrentlyOnScreen = [[NSMutableArray alloc]initWithArray: [currCatsAndPosOnScreen allKeys]];
    // ^^ all the keys (which should be cat objects) are put into the catsCurrentlyOnScreen Array.
    
    ////////// TESTING PURPOSES
    
    /*Cats *tryDeletingCat = catsCurrentlyOnScreen[0]; *************** !!! <---- now this entire block will give me errors because catsCurrentlyOnScreen
     ////////////Now only contains strings (of the cat's names) instead of the actual cat objects.
    NSLog(@"***************************");
    NSLog(@"What cat am I trying to delete from screen? %@ and what is his current loyalty? %i <--- All from tryDeletingCat datastruct", tryDeletingCat.name, tryDeletingCat.currLoyaltyCounter);
    tryDeletingCat.currLoyaltyCounter ++;
    NSLog(@"This is trydeletingcat's new loyaltyCounter: %i", tryDeletingCat.currLoyaltyCounter);*/
    
    NSLog(@"***************************");
    
    Cats *actualLizard = [[GameData sharedGameData].allCatsInGame objectForKey: catsCurrentlyOnScreen[0]];
    NSLog (@"ActualLizard's name: %@",actualLizard.name);
    NSLog(@"ActuaLizard's current Loyalty Counter %i", actualLizard.currLoyaltyCounter);
    actualLizard.currLoyaltyCounter --;
    NSLog(@" After I subtract ActuaLizard's current Loyalty Counter by 1, I get %i", actualLizard.currLoyaltyCounter);

    
    NSLog(@"***************************");


    
    
    
    //////////////////////////// ^^ SHOWED THAT YOU NEED TO MAKE ALL CHANGES IN CAT PROPERTIES IN THE MASTER CAT ARRAY
    if (howManyCatsOnScreen > 0){
        int randomIntToUse = 6;
        for (int abc = 0; abc < [catsCurrentlyOnScreen count]; abc ++){
            int result = arc4random_uniform(randomIntToUse);
            if (result == 0){ ///// DELETE THE CAT FROM ON SCREEN IF RESULT = O
                Cats *deletedCat = catsCurrentlyOnScreen[abc];
                
                ///// ^^^^^^^ FOR DELETED CAT, we may have to actually access the cat in the master cat array (allCatsInGame) and change its properties there TOO. This is because deletedCat may just be a copy, and not a pointer to the original. will have to figure this out.
                
                /// ^^ YEA, JUST TESTED IT. YOU DEFINITELY HAVE TO DO THAT.
                
                
                if (deletedCat.currLoyaltyCounter < deletedCat.maxLoyalty){
                    deletedCat.currLoyaltyCounter ++;
                    if (deletedCat.currLoyaltyCounter >= deletedCat.loyaltyThreshold){
                        deletedCat.inClan = 1;
                    }
                }
                
                deletedCat.onScreen = false;
                int addedPreyPoints = arc4random_uniform(deletedCat.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                [currCatsAndPosOnScreen removeObjectForKey:catsCurrentlyOnScreen[abc]];
                [catsCurrentlyOnScreen removeObjectAtIndex:abc];
                abc --; // all other enteries are shifted to the left
                
            } ///////// END OF CAT DELETION <--- remember to abc --;
        } //// end of for loop
    } //// end of if.
    
    
    // NOW GO THROUGH EACH CAT IN THE GAME AND PUT THEM IN THE AVAILABLE OR NOT AVAILABLE GROUP.
    // CATS ALREADY ON SCREEN ARE AUTOMATICALLY NOT AVAILABLE.
    
    
    
    ///////////////////////////////// END OF ACTUAL START-SCREEN LOGIC
    
    
    

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
