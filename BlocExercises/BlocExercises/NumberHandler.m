//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {

    NSNumber *productNumber;

    productNumber = @([number floatValue] * 2);
    
    return productNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSMutableArray *numbersBetweenArray = [[NSMutableArray alloc] init];

    if (number < otherNumber) {
        for(long firstNumber = number; firstNumber <= otherNumber; firstNumber++) {
            NSNumber *nextNumber = [NSNumber numberWithLong:firstNumber];
            [numbersBetweenArray addObject: nextNumber];
        }
    } else {
        for(long firstNumber = number; firstNumber >= otherNumber; firstNumber--) {
            NSNumber *nextNumber = [NSNumber numberWithLong:firstNumber];
            [numbersBetweenArray addObject: nextNumber];
        }
    }

    return numbersBetweenArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {

    NSInteger lowNumber = [arrayOfNumbers[0] integerValue];
    
    for (NSInteger aNumber = 0; aNumber < [arrayOfNumbers count]; aNumber++) {
        
        if (lowNumber > [arrayOfNumbers[aNumber] integerValue]) {
                lowNumber = [arrayOfNumbers[aNumber] integerValue];
        }
    }
    
    return lowNumber;

}

@end
