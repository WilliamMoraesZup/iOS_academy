//1- Write a function that returns true if all letters are different in a given string

import Foundation

let validText = "abcdefg"
let invalidText = "abfcgf"

var checked = ""
var repeteatedChar = ""

func checkIfDontRepeat(text : String) -> Bool {
    for char in text {
        
        if checked.contains(char) {
            repeteatedChar.append(char)
        }
        checked.append(char)
        print("Letras checadas = \(checked)")
    }
    
    print("Letras repetidas: \(repeteatedChar.count)")
    
     return repeteatedChar.count>0 ?
          false : true
    
}


// Execuçao: Alterar pra trueText ou falseText

checkIfDontRepeat(text: validText) ? print("A frase passou") : print("A frase não passou")
