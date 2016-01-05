//
//  ViewController.m
//  Implementing Calculations
//
//  Created by Dallas S Matthews on 12/10/15.
//  Copyright (c) 2015 Dallas S Matthews. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)textFieldDidChange:(UITextField *)sender {
    NSString *enteredText = sender.text;
    float enteredNumber = [enteredText floatValue];
    
    if (enteredNumber == 0) {
        sender.text = nil;
    }
        
}
- (IBAction)sliderValueDidChange:(UISlider *)sender {
    NSLog(@"Slider value changed to %f", sender.value);
    [self.milkPercentageTextField resignFirstResponder];
    
}
- (IBAction)buttonPressed:(UIButton *)sender {
    [self.milkPercentageTextField resignFirstResponder];
    int numberOfMilks = self.milkCountSlider.value;
    int ouncesInOneMilkGlass = 12;
    
    float proteinPercentageOfMilk = [self.milkPercentageTextField.text floatValue]/100;
    float ouncesOfProteinPerMilk = ouncesInOneMilkGlass * proteinPercentageOfMilk;
    float ouncesOfProteinTotal = ouncesOfProteinPerMilk * numberOfMilks;
    
    float ouncesInOneProteinBar = 5;
    float proteinPercentageOfProteinBar = 0.13;
    
    float ouncesOfProteinPerProteinBar = ouncesInOneProteinBar * proteinPercentageOfProteinBar;
    float numberOfProteinBarsForEquivalentProteinAmount = ouncesOfProteinTotal / ouncesOfProteinPerProteinBar;
    
    NSString *milkText;
    
    if (numberOfMilks ==1) {
        milkText = NSLocalizedString(@"glass of milk", @"singular milk");
    }else{
        milkText = NSLocalizedString(@"glasses of milk", @"plural of milk");
    }
    
    NSString *proteinBarText;
    
    if (numberOfProteinBarsForEquivalentProteinAmount ==1) {
        proteinBarText = NSLocalizedString(@"bar", "singular bar");
    }else{
        proteinBarText = NSLocalizedString(@"bars", "plural of bar");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% protein) contains as much protein as %.1f protein %@.", nil), numberOfMilks, milkText, [self.milkPercentageTextField.text floatValue], numberOfProteinBarsForEquivalentProteinAmount, proteinBarText];
    self.resultLabel.text = resultText;
    
}
- (IBAction)tapGestureDidFire:(UITapGestureRecognizer *)sender {
    [self.milkPercentageTextField resignFirstResponder];
    
}

@end
