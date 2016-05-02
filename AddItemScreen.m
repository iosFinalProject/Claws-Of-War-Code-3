//
//  AddItemScreen.m
//  Claws
//
//  Created by Jonathan Chua on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "AddItemScreen.h"
#import "GameViewController.h"
#import "DecorativeItems.h"
#import "currentStateGameData.h"
#import "Cats.h"

@interface AddItemScreen ()

@end

@implementation AddItemScreen


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _itemName.text = _addItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
     if ([[segue identifier] isEqualToString:@"4thPosition"]) {
         GameViewController *controller = [segue destinationViewController];
         controller.itemToAddFromInventory = _addItem;  ///// MIGHT NOT NEED THIS
         int howManyItemsOnScreenNow = [[GameData sharedGameData].ItemsAndPosOnScreen count];
         NSArray *allItemNamesOnScreen = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];
         for (int thy = 0; thy < howManyItemsOnScreenNow; thy++){ //// DEAL WITH ITEM TO BE DELETED
             NSNumber *positionOfItemBeingDiscussed = [[GameData sharedGameData].ItemsAndPosOnScreen objectForKey:allItemNamesOnScreen[thy]];
             if ([positionOfItemBeingDiscussed isEqual:@4]){
                 [[GameData sharedGameData].ItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                 [currItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                 DecorativeItems *actualItemThatWasDeleted = [[GameData sharedGameData].allItemsInGame objectForKey:allItemNamesOnScreen[thy]];
                 actualItemThatWasDeleted.isOnScreen = NO;
                 actualItemThatWasDeleted.isBeingUsed = NO;
                 actualItemThatWasDeleted.itemPosition = @0;
                 
             } // end if
         }// end for ---- end of dealing with Item to be deleted
         
         int howManyCatsOnScreenNow = [[GameData sharedGameData].CatsAndPosOnScreen count];
         NSArray *allCatNamesOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
         for (int iop = 0; iop <howManyCatsOnScreenNow; iop++){
             NSNumber *positionOfCatBeingDiscussed = [[GameData sharedGameData].CatsAndPosOnScreen objectForKey:allCatNamesOnScreen[iop]];
             if ([positionOfCatBeingDiscussed isEqual:@4]){
                 [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                 [currCatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                 Cats *actualCatToBeDeleted = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesOnScreen[iop]];
                 actualCatToBeDeleted.associatedItem = @"123456";
                 actualCatToBeDeleted.onScreen = NO;
                 if (actualCatToBeDeleted.currLoyaltyCounter < actualCatToBeDeleted.maxLoyalty){
                     actualCatToBeDeleted.currLoyaltyCounter ++;
                     if (actualCatToBeDeleted.currLoyaltyCounter >= actualCatToBeDeleted.loyaltyThreshold){
                         actualCatToBeDeleted.inClan = 1;
                     }
                     
                 }
                 
                 int addedPreyPoints = arc4random_uniform(actualCatToBeDeleted.currLoyaltyCounter + 1);
                 [GameData sharedGameData].preyPoints += addedPreyPoints;

                 
             } //if
         } // end for ----- end of dealing with Cat to be Deleted
         
         //////////// ADD IN THE ACTUAL ITEM NOW
         [[GameData sharedGameData].ItemsAndPosOnScreen setObject:@4 forKey: _addItem];
         [currItemsAndPosOnScreen setObject:@4 forKey:_addItem];
         DecorativeItems *actualItemToBeAdded = [[GameData sharedGameData].allItemsInGame objectForKey:_addItem];
         actualItemToBeAdded.itemPosition = @4; 
         actualItemToBeAdded.isBeingUsed = NO;
         actualItemToBeAdded.isOnScreen = YES;
         
         
     } //end if 4thPosition
    
    
    //////// 3RD POSITION TRY
    
    if ([[segue identifier] isEqualToString:@"3rdPosition"]) {
        GameViewController *controller = [segue destinationViewController];
        controller.itemToAddFromInventory = _addItem;  ///// MIGHT NOT NEED THIS
        int howManyItemsOnScreenNow = [[GameData sharedGameData].ItemsAndPosOnScreen count];
        NSArray *allItemNamesOnScreen = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];
        for (int thy = 0; thy < howManyItemsOnScreenNow; thy++){ //// DEAL WITH ITEM TO BE DELETED
            NSNumber *positionOfItemBeingDiscussed = [[GameData sharedGameData].ItemsAndPosOnScreen objectForKey:allItemNamesOnScreen[thy]];
            if ([positionOfItemBeingDiscussed isEqual:@3]){
                [[GameData sharedGameData].ItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                [currItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                DecorativeItems *actualItemThatWasDeleted = [[GameData sharedGameData].allItemsInGame objectForKey:allItemNamesOnScreen[thy]];
                actualItemThatWasDeleted.isOnScreen = NO;
                actualItemThatWasDeleted.isBeingUsed = NO;
                actualItemThatWasDeleted.itemPosition = @0;
                
            } // end if
        }// end for ---- end of dealing with Item to be deleted
        
        int howManyCatsOnScreenNow = [[GameData sharedGameData].CatsAndPosOnScreen count];
        NSArray *allCatNamesOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
        for (int iop = 0; iop <howManyCatsOnScreenNow; iop++){
            NSNumber *positionOfCatBeingDiscussed = [[GameData sharedGameData].CatsAndPosOnScreen objectForKey:allCatNamesOnScreen[iop]];
            if ([positionOfCatBeingDiscussed isEqual:@3]){
                [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                [currCatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                Cats *actualCatToBeDeleted = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesOnScreen[iop]];
                actualCatToBeDeleted.associatedItem = @"123456";
                actualCatToBeDeleted.onScreen = NO;
                if (actualCatToBeDeleted.currLoyaltyCounter < actualCatToBeDeleted.maxLoyalty){
                    actualCatToBeDeleted.currLoyaltyCounter ++;
                    if (actualCatToBeDeleted.currLoyaltyCounter >= actualCatToBeDeleted.loyaltyThreshold){
                        actualCatToBeDeleted.inClan = 1;
                    }
                    
                }
                
                int addedPreyPoints = arc4random_uniform(actualCatToBeDeleted.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                
                
            } //if
        } // end for ----- end of dealing with Cat to be Deleted
        
        //////////// ADD IN THE ACTUAL ITEM NOW
        [[GameData sharedGameData].ItemsAndPosOnScreen setObject:@3 forKey: _addItem];
        [currItemsAndPosOnScreen setObject:@3 forKey:_addItem];
        DecorativeItems *actualItemToBeAdded = [[GameData sharedGameData].allItemsInGame objectForKey:_addItem];
        actualItemToBeAdded.itemPosition = @3;
        actualItemToBeAdded.isBeingUsed = NO;
        actualItemToBeAdded.isOnScreen = YES;
        
        
    } //end if 3rdPosition
    
    
    //////////////////////
    
    
    
    
    //////// 2nd POSITION TRY
    
    if ([[segue identifier] isEqualToString:@"2ndPosition"]) {
        GameViewController *controller = [segue destinationViewController];
        controller.itemToAddFromInventory = _addItem;  ///// MIGHT NOT NEED THIS
        int howManyItemsOnScreenNow = [[GameData sharedGameData].ItemsAndPosOnScreen count];
        NSArray *allItemNamesOnScreen = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];
        for (int thy = 0; thy < howManyItemsOnScreenNow; thy++){ //// DEAL WITH ITEM TO BE DELETED
            NSNumber *positionOfItemBeingDiscussed = [[GameData sharedGameData].ItemsAndPosOnScreen objectForKey:allItemNamesOnScreen[thy]];
            if ([positionOfItemBeingDiscussed isEqual:@2]){
                [[GameData sharedGameData].ItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                [currItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                DecorativeItems *actualItemThatWasDeleted = [[GameData sharedGameData].allItemsInGame objectForKey:allItemNamesOnScreen[thy]];
                actualItemThatWasDeleted.isOnScreen = NO;
                actualItemThatWasDeleted.isBeingUsed = NO;
                actualItemThatWasDeleted.itemPosition = @0;
                
            } // end if
        }// end for ---- end of dealing with Item to be deleted
        
        int howManyCatsOnScreenNow = [[GameData sharedGameData].CatsAndPosOnScreen count];
        NSArray *allCatNamesOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
        for (int iop = 0; iop <howManyCatsOnScreenNow; iop++){
            NSNumber *positionOfCatBeingDiscussed = [[GameData sharedGameData].CatsAndPosOnScreen objectForKey:allCatNamesOnScreen[iop]];
            if ([positionOfCatBeingDiscussed isEqual:@2]){
                [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                [currCatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                Cats *actualCatToBeDeleted = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesOnScreen[iop]];
                actualCatToBeDeleted.associatedItem = @"123456";
                actualCatToBeDeleted.onScreen = NO;
                if (actualCatToBeDeleted.currLoyaltyCounter < actualCatToBeDeleted.maxLoyalty){
                    actualCatToBeDeleted.currLoyaltyCounter ++;
                    if (actualCatToBeDeleted.currLoyaltyCounter >= actualCatToBeDeleted.loyaltyThreshold){
                        actualCatToBeDeleted.inClan = 1;
                    }
                    
                }
                
                int addedPreyPoints = arc4random_uniform(actualCatToBeDeleted.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                
                
            } //if
        } // end for ----- end of dealing with Cat to be Deleted
        
        //////////// ADD IN THE ACTUAL ITEM NOW
        [[GameData sharedGameData].ItemsAndPosOnScreen setObject:@2 forKey: _addItem];
        [currItemsAndPosOnScreen setObject:@2 forKey:_addItem];
        DecorativeItems *actualItemToBeAdded = [[GameData sharedGameData].allItemsInGame objectForKey:_addItem];
        actualItemToBeAdded.itemPosition = @2;
        actualItemToBeAdded.isBeingUsed = NO;
        actualItemToBeAdded.isOnScreen = YES;
        
        
    } //end if 2ndPosition
    
    
    //////////////////////
    
    //////// 1st POSITION TRY
    
    if ([[segue identifier] isEqualToString:@"1stPosition"]) {
        GameViewController *controller = [segue destinationViewController];
        controller.itemToAddFromInventory = _addItem;  ///// MIGHT NOT NEED THIS
        int howManyItemsOnScreenNow = [[GameData sharedGameData].ItemsAndPosOnScreen count];
        NSArray *allItemNamesOnScreen = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];
        for (int thy = 0; thy < howManyItemsOnScreenNow; thy++){ //// DEAL WITH ITEM TO BE DELETED
            NSNumber *positionOfItemBeingDiscussed = [[GameData sharedGameData].ItemsAndPosOnScreen objectForKey:allItemNamesOnScreen[thy]];
            if ([positionOfItemBeingDiscussed isEqual:@1]){
                [[GameData sharedGameData].ItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                [currItemsAndPosOnScreen removeObjectForKey:allItemNamesOnScreen[thy]];
                DecorativeItems *actualItemThatWasDeleted = [[GameData sharedGameData].allItemsInGame objectForKey:allItemNamesOnScreen[thy]];
                actualItemThatWasDeleted.isOnScreen = NO;
                actualItemThatWasDeleted.isBeingUsed = NO;
                actualItemThatWasDeleted.itemPosition = @0;
                
            } // end if
        }// end for ---- end of dealing with Item to be deleted
        
        int howManyCatsOnScreenNow = [[GameData sharedGameData].CatsAndPosOnScreen count];
        NSArray *allCatNamesOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
        for (int iop = 0; iop <howManyCatsOnScreenNow; iop++){
            NSNumber *positionOfCatBeingDiscussed = [[GameData sharedGameData].CatsAndPosOnScreen objectForKey:allCatNamesOnScreen[iop]];
            if ([positionOfCatBeingDiscussed isEqual:@1]){
                [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                [currCatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                Cats *actualCatToBeDeleted = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesOnScreen[iop]];
                actualCatToBeDeleted.associatedItem = @"123456";
                actualCatToBeDeleted.onScreen = NO;
                if (actualCatToBeDeleted.currLoyaltyCounter < actualCatToBeDeleted.maxLoyalty){
                    actualCatToBeDeleted.currLoyaltyCounter ++;
                    if (actualCatToBeDeleted.currLoyaltyCounter >= actualCatToBeDeleted.loyaltyThreshold){
                        actualCatToBeDeleted.inClan = 1;
                    }
                    
                }
                
                int addedPreyPoints = arc4random_uniform(actualCatToBeDeleted.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                
                
            } //if
        } // end for ----- end of dealing with Cat to be Deleted
        
        //////////// ADD IN THE ACTUAL ITEM NOW
        [[GameData sharedGameData].ItemsAndPosOnScreen setObject:@1 forKey: _addItem];
        [currItemsAndPosOnScreen setObject:@1 forKey:_addItem];
        DecorativeItems *actualItemToBeAdded = [[GameData sharedGameData].allItemsInGame objectForKey:_addItem];
        actualItemToBeAdded.itemPosition = @1;
        actualItemToBeAdded.isBeingUsed = NO;
        actualItemToBeAdded.isOnScreen = YES;
        
        
    } //end if 1stPosition
    
    
    //////////////////////


    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
