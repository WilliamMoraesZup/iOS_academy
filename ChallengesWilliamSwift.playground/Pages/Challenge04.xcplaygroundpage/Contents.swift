
//4- Write a function that returns N greatest numbers of an array of floats

import Foundation


let arrayFloats : [Float] = [100, 1.4, 20, 10.0, 20, 5, 12, 40, 12.0, 90, 12.4]
var greatest : [Float] = []


func returnGreatestValue(numbers : [Float], greaterThan: Float ) -> [Float] {
    
    for number in numbers {
        if number >  greaterThan  {
            greatest.append(number)
        }
    }
    
    return greatest
    }
    
print(returnGreatestValue(numbers: arrayFloats,greaterThan: 30))
    
    
