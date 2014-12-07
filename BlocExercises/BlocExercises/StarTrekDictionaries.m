//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSString *characterDrinkString = characterDictionary[@"favorite drink"];
    
        return characterDrinkString;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {

    NSMutableArray *drinkArray = [NSMutableArray array];
    
    for (NSDictionary *drinks in charactersArray){
        [drinkArray addObject:drinks[@"favorite drink"]];
    }

    return drinkArray;

}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSMutableDictionary *quoteToAdd = [characterDictionary mutableCopy];
    [quoteToAdd setObject:@"This is the quote to add" forKey:@"quote"];
    
    return quoteToAdd;

}

@end
