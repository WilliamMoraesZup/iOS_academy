//6- Write a function that returns the amount of strings in an array that starts with a given character

import Foundation

let arrayWords = ["Banana","Maça","Melancia","Uva","berinjela","Goiaba"]

func returnStart( letter: String, words : [String]) -> [String ]{
 
    let filteredWords =    words.filter {$0.lowercased().hasPrefix(letter.lowercased())}
    return filteredWords
}


print( returnStart( letter: "B", words: arrayWords) )
