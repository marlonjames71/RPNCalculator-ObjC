//
//  MJRDigitAccumulator.m
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/11/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRDigitAccumulator.h"

@interface MJRDigitAccumulator()

@property NSMutableArray *digits;
@property (assign, nonatomic) NSString *digitsStr;

@end

@implementation MJRDigitAccumulator



- (void)addDigitWithNumericValue:(NSInteger)digit {
    NSString *digitStr = [NSString stringWithFormat:@"%lu", digit];
    [self.digits addObject:digitStr];
}

- (void)addDecimalPoint {
    NSString *decimal = @".";
    [self.digits addObject:decimal];
}

- (NSString *)digitsStr {
    return [self.digits componentsJoinedByString:@""];
}

- (void)clear {
    [self.digits removeAllObjects];
}





@end
