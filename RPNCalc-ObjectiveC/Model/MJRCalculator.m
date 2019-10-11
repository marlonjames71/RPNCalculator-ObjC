//
//  MJRCalculator.m
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRCalculator.h"
#import "MJRStack.h"

@interface MJRCalculator()

@property MJRStack *stack;

@end

@implementation MJRCalculator

- (void)pushNumber:(double)value {
    [[self stack] push:value];
}

- (void)applyOperator:(Operator)operator {

    double rhsOperand = [self.stack pop];
    double lhsOperand = [self.stack pop];

    double result = 0.0;

    switch (operator) {
        case add:
            result = lhsOperand + rhsOperand;
        case subtract:
            result = lhsOperand - rhsOperand;
        case multiply:
            result = lhsOperand * rhsOperand;
        case divide:
            result = lhsOperand / rhsOperand;
    }

    [self.stack push:result];
}

- (void)clear {
    self.stack = [[MJRStack alloc] init];
}

@end
