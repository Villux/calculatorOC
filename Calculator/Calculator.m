//
//  Calculator.m
//  Calculator
//
//  Created by Ville Toiviainen on 07/07/15.
//  Copyright (c) 2015 Ville Toiviainen. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (float) stackToNumber {
    // Replace comma with dot
    NSString *numberString = [self.stack stringByReplacingOccurrencesOfString:@"," withString:@"."];
    float number = [numberString floatValue];
    if (number) {
        return number;
    }
    else {
        return 0;
    }
    
}

- (NSMutableString *) floatToString {
    NSMutableString *resultInString = [[NSMutableString alloc] init];
    [resultInString setString:[NSString stringWithFormat:@"%g", self.result]];
    [resultInString stringByReplacingOccurrencesOfString:@"." withString:@","];
    return resultInString;
}

- (void) addNumberToStack:(NSString *)number {
    [self.stack appendString:number];
    NSLog(@"%@", self.stack);
}
- (void) calculate:(int)operationType {
    float number = [self stackToNumber];
    switch (operationType) {
        case 0:
            //equals
            switch (self.storedOperationType) {
                case 1:
                    // sum
                    self.result += number;
                    self.storedOperationType = 0;
                    break;
                case 2:
                    // substract
                    self.result -= number;
                    self.storedOperationType = 0;
                    break;
                default:
                    break;
            }
            break;
        case 1:
            //sum
            self.storedOperationType = 1;
            self.result += number;
            break;
        case 2:
            self.storedOperationType = 2;
            self.result -= number;
            //substract
        default:
            break;
    }
    self.tempStack = [self floatToString];
    [self.stack setString:@""];
}

@end
