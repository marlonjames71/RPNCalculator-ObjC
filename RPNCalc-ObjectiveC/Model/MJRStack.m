//
//  MJRStack.m
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRStack.h"

@interface MJRStack() {
    NSMutableArray *values;
}

@end

@implementation MJRStack

- (instancetype)initWithArray:(NSArray *)array {
    if (self = [self init]) {
        values = [array mutableCopy];
    }
    return self;
}

- (void)push:(double)value {
    [values addObject:[NSNumber numberWithDouble:value]];
}

- (double)peek {
    return [values.lastObject intValue];
}

- (double)pop {
    int lastObject = [values.lastObject intValue];
    [values removeLastObject];
    return lastObject;
}


@end
