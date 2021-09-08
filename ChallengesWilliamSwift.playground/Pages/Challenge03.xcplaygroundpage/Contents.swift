
//3- Write a function that returns the average of a given array of doubles

import Foundation


let arrayDouble = [ 3.10, 2.4, 19.1, 20.5, 30.0 ]
func returnAverage( numbers : [Double] ) -> Double  {
    return numbers.reduce(0, +) / Double(numbers.count)
}


print(returnAverage(numbers: arrayDouble))
