//
//  MJRCalculator.h
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MJRCalculator : NSObject

typedef NS_ENUM(NSInteger, Operator) {
    add,
    subtract,
    multiply,
    divide
};

- (void)pushNumber:(double)value;
- (void)applyOperator:(Operator)operator;
- (void)clear;

@property double topValue;

@end
