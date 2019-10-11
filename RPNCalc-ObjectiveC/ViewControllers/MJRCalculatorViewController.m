//
//  MJRCalculatorViewController.m
//  RPNCalc-ObjectiveC
//
//  Created by Marlon Raskin on 10/10/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

#import "MJRCalculatorViewController.h"
#import "MJRCalculator.h"
#import "MJRDigitAccumulator.h"
#import "MJRStack.h"

@interface MJRCalculatorViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)numberButtonTapped:(UIButton *)sender;
- (IBAction)clearButtonPressed:(UIButton *)sender;
- (IBAction)decimalButtonTapped:(UIButton *)sender;
- (IBAction)divideButtonTapped:(UIButton *)sender;
- (IBAction)multiplyButtonTapped:(UIButton *)sender;
- (IBAction)plusButtonTapped:(UIButton *)sender;
- (IBAction)subtractButtonTapped:(UIButton *)sender;
- (IBAction)returnButtonTapped:(UIButton *)sender;

@property (nonatomic) NSNumberFormatter *numberFormatter;

@end

@implementation MJRCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSNumberFormatter *)numberFormatter {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.maximumIntegerDigits = 20;
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 20;
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return formatter;
}

@end
