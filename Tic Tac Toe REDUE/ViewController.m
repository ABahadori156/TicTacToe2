//
//  ViewController.m
//  Tic Tac Toe REDUE
//
//  Created by Pasha Bahadori on 5/30/16.
//  Copyright © 2016 Pelican Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UIButton *buttonFour;
@property (weak, nonatomic) IBOutlet UIButton *buttonFive;
@property (weak, nonatomic) IBOutlet UIButton *buttonSix;
@property (weak, nonatomic) IBOutlet UIButton *buttonSeven;
@property (weak, nonatomic) IBOutlet UIButton *buttonEight;
@property (weak, nonatomic) IBOutlet UIButton *buttonNine;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property BOOL isX;
@property BOOL shouldSave;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isX = false;
    [self showCurrentPlayer];
}


// When a button is tapped, change the label to X or O based on whose turn it is
// Ensure X's are blue and O's are red
// Ensure whichPlayerLabel shows either an X or an O indicating the player who should go next


-(void)showCurrentPlayer{
    self.isX = !self.isX;
    if(self.isX) {
        self.whichPlayerLabel.text = @"X";
    } else {
        self.whichPlayerLabel.text = @"O";
    }
}


-(void)onButtonTapped: (UIButton *)sender {
    NSArray *buttons = [[NSArray alloc] initWithObjects: self.buttonOne, self.buttonTwo, self.buttonThree, self.buttonFour, self.buttonFive, self.buttonSix, self.buttonSeven, self.buttonEight, self.buttonNine, nil];
    
    
    
}

@end
