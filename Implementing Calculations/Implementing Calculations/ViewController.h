//
//  ViewController.h
//  Implementing Calculations
//
//  Created by Dallas S Matthews on 12/10/15.
//  Copyright (c) 2015 Dallas S Matthews. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *milkPercentageTextField;
@property (weak, nonatomic) IBOutlet UISlider *milkCountSlider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


-(void)buttonPressed:(UIButton*)sender;


@end

