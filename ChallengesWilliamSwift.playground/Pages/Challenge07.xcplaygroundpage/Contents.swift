//7- Write a function that performs a given arithmetic operation in a given pair of doubles


import Foundation

let pair = (firstNumber : 10.5, operator: "+",secondNumber: 20.9)


func calculate(numbers : (firstNumber: Double, operator: String,secondNumber: Double) ) -> Double {
     
    switch numbers.operator{
    case "*":  return numbers.firstNumber*numbers.secondNumber
    case "+":  return  numbers.firstNumber+numbers.secondNumber
    case "-":  return numbers.firstNumber-numbers.secondNumber
    case "/": return numbers.firstNumber/numbers.secondNumber

    default:
       return 0
    }
    
}
   print( calculate(numbers: pair  ))
    
