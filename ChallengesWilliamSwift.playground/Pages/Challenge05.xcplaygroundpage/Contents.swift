
//5- Write a function that returns a list of the separated words of a given string

import Foundation

var phrase = "Frase teste, para testar o challenge"

 
func newPhrase(text : String) -> [String] {
    
    var words =  text.components(separatedBy: " ")
    //var wordsSecondWay = text.split {$0 == " "}
    
    for word in words {
        if words.contains(" "){
            words.removeAll { $0 == " " }
        }
    }
    
    return words
}

 print (newPhrase(text: phrase))
