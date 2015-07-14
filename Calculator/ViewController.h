//
//  ViewController.h
//  Calculator
//
//  Created by Ville Toiviainen on 07/07/15.
//  Copyright (c) 2015 Ville Toiviainen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *calculatorLabel;
@property Calculator *calculator;
@property (weak, nonatomic) IBOutlet UIButton *commaButton;

- (void) updateLabelText;

@end

