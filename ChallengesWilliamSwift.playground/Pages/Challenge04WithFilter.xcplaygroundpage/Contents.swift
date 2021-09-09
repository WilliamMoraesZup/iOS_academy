//: [Previous](@previous)

import Foundation


let arrayFloats : [Float] = [100, 1.4, 20, 10.0, 20, 5, 12, 40, 12.0, 90, 12.4]
var greatest : [Float] = []


func returnGreatestValue(numbers : [Float], greaterThan: Float ) -> [Float] {
    
 return numbers.filter{ (e) -> e > greaterThan}
 
    }
    
print(returnGreatestValue(numbers: arrayFloats,greaterThan: 30))
    
    
