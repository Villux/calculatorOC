//
//  ViewController.m
//  Calculator
//
//  Created by Ville Toiviainen on 07/07/15.
//  Copyright (c) 2015 Ville Toiviainen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Init calculator object
    self.calculator = [[Calculator alloc] init];
    // Init stack string
    self.calculator.stack = [[NSMutableString alloc] init];
    [self.calculator.stack setString:@""];
    
    // Stack to UI's calculator label
    self.calculatorLabel.text = self.calculator.stack;
    
    // Comma button radius
//    self.commaButton.layer.cornerRadius = 10;
//    self.commaButton.layer.borderColor=[UIColor redColor].CGColor;
//    self.commaButton.layer.borderWidth=2.0f;
//
//    self.commaButton.clipsToBounds = YES;

    
//    CALayer *layer = [CALayer layer];
//    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.commaButton.bounds byRoundingCorners:(UIRectCornerTopLeft) cornerRadii:CGSizeMake(100000.0, 10.0)];
//    layer.shadowPath = shadowPath.CGPath;
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    self.commaButton.layer.mask = layer;


    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateLabelText {
    if (self.calculator.stack.length != 0) {
        self.calculatorLabel.text = self.calculator.stack;
    } else {
        self.calculatorLabel.text = self.calculator.tempStack;
    }
    
}

- (IBAction)one:(id)sender {
    [self.calculator addNumberToStack:@"1"];
    [self updateLabelText];
}
- (IBAction)two:(id)sender {
    [self.calculator addNumberToStack:@"2"];
    [self updateLabelText];
}
- (IBAction)three:(id)sender {
    [self.calculator addNumberToStack:@"3"];
    [self updateLabelText];
}
- (IBAction)four:(id)sender {
    [self.calculator addNumberToStack:@"4"];
    [self updateLabelText];
}
- (IBAction)five:(id)sender {
    [self.calculator addNumberToStack:@"5"];
    [self updateLabelText];
}
- (IBAction)six:(id)sender {
    [self.calculator addNumberToStack:@"6"];
    [self updateLabelText];
}
- (IBAction)seven:(id)sender {
    [self.calculator addNumberToStack:@"7"];
    [self updateLabelText];
}
- (IBAction)eight:(id)sender {
    [self.calculator addNumberToStack:@"8"];
    [self updateLabelText];
}
- (IBAction)nine:(id)sender {
    [self.calculator addNumberToStack:@"9"];
    [self updateLabelText];
}
- (IBAction)zero:(id)sender {
    [self.calculator addNumberToStack:@"0"];
    [self updateLabelText];
}

- (IBAction)comma:(id)sender {
    if (self.calculator.stack.length) {
        [self.calculator addNumberToStack:@","];
        [self updateLabelText];
    }
}
- (IBAction)cancel:(id)sender {
    // set empty stack
    [self.calculator.stack setString:@""];
    self.calculator.result = 0.0;
    [self updateLabelText];
    
}
- (IBAction)equals:(id)sender {
    [self.calculator calculate:0];
    [self updateLabelText];
}
- (IBAction)multiply:(id)sender {
    [self.calculator calculate:1];
    [self updateLabelText];
}
- (IBAction)subtraction:(id)sender {
    [self.calculator calculate:2];
    [self updateLabelText];
}


@end
