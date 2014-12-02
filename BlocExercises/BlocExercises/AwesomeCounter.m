//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableString *resultString = [@"" mutableCopy];
    NSInteger firstNumber = number;
    NSInteger secondNumber = otherNumber;
    
    if (firstNumber == secondNumber){
        return [NSString stringWithFormat: @"%ld", (long)firstNumber];
    } else if (firstNumber < secondNumber) {
        for (NSInteger firstNumber = number; firstNumber <= secondNumber; firstNumber++) {
        [resultString appendString:[NSString stringWithFormat: @"%ld", (long)firstNumber]];
        }
    } else if (firstNumber > secondNumber){
        for (NSInteger secondNumber = otherNumber; secondNumber <= firstNumber; secondNumber++) {
        [resultString appendString:[NSString stringWithFormat: @"%ld", (long)secondNumber]];
        }
    }
    
    return resultString;
}

@end
