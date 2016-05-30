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
@property (weak, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text =[NSString stringWithFormat:@"X"];
    //[self showCurrentPlayer];
}



-(IBAction)onButtonTapped: (UIButton *)sender {
//    NSArray *buttons = [[NSArray alloc] initWithObjects: self.buttonOne, self.buttonTwo, self.buttonThree, self.buttonFour, self.buttonFive, self.buttonSix, self.buttonSeven, self.buttonEight, self.buttonNine, nil];

    NSLog(@"button first tapped - first step");
    
        if (self.whichPlayerLabel.text == [NSString stringWithFormat:@"X"]) {
    
            // X related actions:
            [sender setTitle:@"X" forState:UIControlStateNormal];
            self.whichPlayerLabel.text = [NSString stringWithFormat:@"O"];
            [sender setTintColor:[UIColor redColor]];
            
            
            sender.userInteractionEnabled = NO;
            
            
        } else {
            
            // O related actions:
            [sender setTitle:@"O" forState:UIControlStateNormal];
            self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
            [sender setTintColor:[UIColor blueColor]];
            
            
            sender.userInteractionEnabled = NO;
        }
    
    
    
             
    
    
}

@end
