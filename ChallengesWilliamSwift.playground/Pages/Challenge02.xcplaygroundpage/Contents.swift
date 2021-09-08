 
import UIKit

// Write a function that returns the smallest number of an array of integers


let arrayNumbers = [9,3,4,1,2,5,1,6,4,3,5,7,3,2,10,4]

func returnSmallerNumber(numbers : [Int]) -> Int {
    
    var smaller = Int.min
    
    for number in numbers{
        if smaller == Int.min || number < smaller { smaller = number}
         
    }
    return smaller
}

print("O menor numero do Array é -> \(returnSmallerNumber(numbers: arrayNumbers))")

