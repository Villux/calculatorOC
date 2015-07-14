//
//  Calculator.h
//  Calculator
//
//  Created by Ville Toiviainen on 07/07/15.
//  Copyright (c) 2015 Ville Toiviainen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calculator : UIView
// User input in a stack
@property NSMutableString *stack;
// Temp stack after operation
@property NSMutableString *tempStack;
// Current calculation result
@property float result;
@property int storedOperationType;
// Add number to the stack
- (void) addNumberToStack:( NSString *) number;
- (void) calculate: (int) operationType;



@end
