//
//  AddItemScreen.m
//  Claws
//
//  Created by Jonathan Chua on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "AddItemScreen.h"

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
