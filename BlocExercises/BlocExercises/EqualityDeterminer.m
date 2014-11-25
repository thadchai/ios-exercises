//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    BOOL areTheyTheSame = [string1 isEqualToString:string2];
    NSLog(@"Are they the same? %@", areTheyTheSame ? @"Yes" : @"No");
    
    return areTheyTheSame;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL areNumbersTheSame = [number1 isEqualToNumber:number2];
    NSLog(@"Are numbers the same? %@", areNumbersTheSame ? @"Yes" : @"No");
    return areNumbersTheSame;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    BOOL integerIsGreaterThan = (integer1 > integer2);
    NSLog(@"Is integer1 greater than integer2? %@", integerIsGreaterThan ? @"Yes" : @"No");
    return integerIsGreaterThan;
}

@end
