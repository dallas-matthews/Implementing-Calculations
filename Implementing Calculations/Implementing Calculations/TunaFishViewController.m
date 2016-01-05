//
//  TunaFishViewController.m
//  
//
//  Created by Dallas S Matthews on 12/10/15.
//
//

#import "TunaFishViewController.h"
#import "ViewController.h"

@implementation TunaFishViewController


-(void)buttonPressed:(UIButton*)sender;
{
    [self.milkPercentageTextField resignFirstResponder];
    
    int numberOfMilk = self.milkCountSlider.value;
    int ouncesInOneMilkGlass = 12;
    
    float proteinPercentageOfMilk = [self.milkPercentageTextField.text floatValue]/100;
    float ouncesOfProteinPerMilk = ouncesInOneMilkGlass * proteinPercentageOfMilk;
    float ouncesOfProteinTotal = ouncesOfProteinPerMilk * numberOfMilk;
    
    float ouncesInOneTunaFishCan = 1;
    float proteinPercentageOfTunaFish = 0.4;
    
    float ouncesOfProteinPerTunaFishCan = ouncesInOneTunaFishCan * proteinPercentageOfTunaFish;
    float numberOfTunaFishCansForEquivalentProteinAmount = ouncesOfProteinTotal / ouncesOfProteinPerTunaFishCan;
    
    NSString *milkText;
    
    if (numberOfMilk ==1) {
        milkText = NSLocalizedString(@"milk", @"singular milk");
    }else{
        milkText = NSLocalizedString(@"milks", @"plural of milk");
    }
    
    NSString *tunaFishText;
    
    if (numberOfTunaFishCansForEquivalentProteinAmount ==1) {
        tunaFishText = NSLocalizedString(@"bite", "singular bite");
    }else{
        tunaFishText = NSLocalizedString(@"bites", "plural of bite");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ (with %.2f%% protein) contains as much protein as %.1f %@ of tuna fish.", nil), numberOfMilk, milkText, [self.milkPercentageTextField.text floatValue], numberOfTunaFishCansForEquivalentProteinAmount, tunaFishText];
    self.resultLabel.text = resultText;
    
}

@end

