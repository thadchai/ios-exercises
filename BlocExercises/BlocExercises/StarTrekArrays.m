//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {

    NSArray *returningArray = [characterString componentsSeparatedByString:@";"];
    [returningArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [returningArray arrayByAddingObject:obj];
    }];
    
    return returningArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *returningString = [characterArray componentsJoinedByString:@";"];

    return returningString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {

    NSMutableArray *characterMutableArray = [characterArray mutableCopy];
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterMutableArray sortUsingDescriptors:@[sortDescriptor]];

    return characterMutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {

    NSMutableArray *characterMutableArray = [characterArray mutableCopy];
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [characterMutableArray filterUsingPredicate:containsWorf];
    for (NSString *characterWorf in characterMutableArray) {
        NSLog(@"Contains: %@", characterWorf);
        return YES;
    }
    
    return NO;
}

@end
