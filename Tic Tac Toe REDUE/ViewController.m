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
    NSString* str1 = [self.buttonOne titleForState:UIControlStateNormal];
    NSString* str2 = [self.buttonTwo titleForState:UIControlStateNormal];
    NSString* str3 = [self.buttonThree titleForState:UIControlStateNormal];
    NSString* str4 = [self.buttonFour titleForState:UIControlStateNormal];
    NSString* str5 = [self.buttonFive titleForState:UIControlStateNormal];
    NSString* str6 = [self.buttonSix titleForState:UIControlStateNormal];
    NSString* str7 = [self.buttonSeven titleForState:UIControlStateNormal];
    NSString* str8 = [self.buttonEight titleForState:UIControlStateNormal];
    NSString* str9 = [self.buttonNine titleForState:UIControlStateNormal];
   
    
    NSLog(@"button first tapped - first step");
    
        if (self.whichPlayerLabel.text == [NSString stringWithFormat:@"X"]) {
            // X related actions:
            [sender setTitle:@"X" forState:UIControlStateNormal];
            self.whichPlayerLabel.text = [NSString stringWithFormat:@"O"];
            [sender setTintColor:[UIColor redColor]];
            
            // Disables current button tapped for ever being used again
            sender.userInteractionEnabled = NO;
            
            
        } else {
            // O related actions:
            [sender setTitle:@"O" forState:UIControlStateNormal];
            self.whichPlayerLabel.text = [NSString stringWithFormat:@"X"];
            [sender setTintColor:[UIColor blueColor]];
            
            sender.userInteractionEnabled = NO;
        }
    
    if([str1 isEqualToString:str2] && [str2 isEqualToString:str3]){
        
        NSLog(@" winner: %@", str3 );
    }

    [self checkWinner];

}

-(void)checkWinner{
    NSString* str1 = [self.buttonOne titleForState:UIControlStateNormal];
    NSString* str2 = [self.buttonTwo titleForState:UIControlStateNormal];
    NSString* str3 = [self.buttonThree titleForState:UIControlStateNormal];
    NSString* str4 = [self.buttonFour titleForState:UIControlStateNormal];
    NSString* str5 = [self.buttonFive titleForState:UIControlStateNormal];
    NSString* str6 = [self.buttonSix titleForState:UIControlStateNormal];
    NSString* str7 = [self.buttonSeven titleForState:UIControlStateNormal];
    NSString* str8 = [self.buttonEight titleForState:UIControlStateNormal];
    NSString* str9 = [self.buttonNine titleForState:UIControlStateNormal];
    
    if([str1 isEqualToString:str2] && [str2 isEqualToString:str3]){
        NSLog(@" winner: %@", str3 );
        UIAlertController *winnerAlert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:<#(nonnull NSString *), ...#>]@"Player %@ Wins!", message:<#(nullable NSString *)#> preferredStyle:<#(UIAlertControllerStyle)#>]
    }
    
    if([str4 isEqualToString:str5] && [str5 isEqualToString:str6]){
        NSLog(@" winner: %@", str6 );
    }
    
    if([str7 isEqualToString:str8] && [str8 isEqualToString:str9]){
        NSLog(@" winner: %@", str9 );
    }
    
    if([str1 isEqualToString:str4] && [str4 isEqualToString:str7]){
        NSLog(@" winner: %@", str7 );
    }
    
    if([str2 isEqualToString:str5] && [str5 isEqualToString:str8]){
        NSLog(@" winner: %@", str8 );
    }
    
    if([str3 isEqualToString:str6] && [str6 isEqualToString:str9]){
        NSLog(@" winner: %@", str9 );
    }
    
    if([str1 isEqualToString:str5] && [str5 isEqualToString:str9]){
        NSLog(@" winner: %@", str9 );
    }
    
    if([str3 isEqualToString:str5] && [str5 isEqualToString:str7]){
        NSLog(@" winner: %@", str7 );
    }
    
    
}
    @end

