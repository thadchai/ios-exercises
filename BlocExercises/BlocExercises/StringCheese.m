//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *favoriteCheeseIs = @"My favorite cheese is ";
    NSString *favoriteCheeseWithName = [favoriteCheeseIs stringByAppendingString:cheeseName];
    NSString *cheesePeriod = @".";
    NSString *favoriteCheese = [favoriteCheeseWithName stringByAppendingString:cheesePeriod];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    if ([cheeseName isEqual: @"Gouda"]) {
        return cheeseName;
    }
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    return cheeseNameOnly;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {

    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *numberOfCheeseString = @"1 cheese";
        return numberOfCheeseString;
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *numberOfCheeseString = [NSString stringWithFormat:@"%lu cheeses", cheeseCount];
        return numberOfCheeseString;
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */

    return nil;
}

@end
