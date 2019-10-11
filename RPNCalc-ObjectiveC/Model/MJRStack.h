//
//  MJRStack.h
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJRStack : NSObject

- (instancetype)initWithArray:(NSArray *)array;
- (void)push:(double)value;
- (double)peek;
- (double)pop;

@end
