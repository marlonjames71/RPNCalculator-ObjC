//
//  MJRDigitAccumulator.h
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/11/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJRDigitAccumulator : NSObject

@property (readonly) double value;

- (void)addDigitWithNumericValue:(NSInteger)digit;
- (void)addDecimalPoint;
- (void)clear;

@end
