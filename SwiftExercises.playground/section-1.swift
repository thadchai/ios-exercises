import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    
    return "My favorite cheese is " + cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE

numberArray += [5]


var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE

numberDictionary[5] = "five"

//To Confirm the item has been added

numberDictionary.count

for item in numberDictionary {
    
    println(item)

}

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE

for printClosed in 1...10 {

    println(printClosed)

}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for printHalfClosed in 1..<11 {
    
    println(printHalfClosed)

}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    // NOTE:  FIRST ATTEMPT = This was just to see if it would return something to confirm something was working, but it wouldn't return as an Array?
    
    // var drinksArray = (characters[0]["favorite drink"], characters[1]["favorite drink"])
    
    // println(drinksArray)
    

    // NOTE:  SECOND ATTEMPT = Here I tried running the Loop, but I couldn't figure out how to bypass the error below in line 102
    // I don't see anywhere in the checkpoint where they talk about how to access the string data nested within a dictionary in an array
    // error: 'Dictionary<String, String>' is not convertible to '(Array<Dictionary<String, String>>, Array<Dictionary<String, String>>)'
    
    // var drinksList = Array<String>()
    
    // for (favoriteDrink, drinkItems) in characters {
    // drinksList += drinkItems
    // }
    
    // return drinksList
    
    return []
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func arrayToStringSemicolons(stringArray: Array<String>) -> String{
    var stringSemicolons = String()
    
    for stringItems in stringArray {
        stringSemicolons += stringItems + ";"
    }
    
    return stringSemicolons
}

let resultedOutput = arrayToStringSemicolons(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let cerealSorted = sorted(cerealArray, <)


