// Write a function that returns true if a Tic-Tac-Toe board has a winner

import Foundation

let ticTacToeBoard : [[String]] =  [["e","O","u"],
                                    ["O","u","X"],
                                    ["u","X","e"]]

func whoWin(board : [[String]] ){
    // var horizontal = 0
    //HORIZONTAL
    // for horizontal in 0..<3{
      
    var xElements: [String] = []
    
    var yElements: [String] = []
    var diagElemnts: [String] = []
    
    for i in 0..<3 {
        for y in 0..<3 {
            xElements.append(board[i][y])
            
            
            }
        
        if xElements.count==3 {
                print("verificando linha Hor... \(xElements)")
                check(points: xElements)
                xElements = []
        }
        for x in 0..<3 {
            yElements.append(board[x][i])
            }
        
        if yElements.count==3 {
            print("verificando linha Ver... \(yElements)")
                check(points: yElements)
            yElements = []
        }
        
        //Checa Diagonal 1
        var diagonal = 0
        for diag in 0..<3{
        
            diagElemnts.append(board[diag][diagonal])
            diagonal+1
        }
        if diagElemnts.count==3 {  print("verificando linha Diag... \(diagElemnts)") }
        
//        diagonal = 2
//        diagElemnts = []
//
//        for diag in 0..<3{
//
//            diagElemnts.append(board[diag][diagonal])
//            diagonal-1
//        }
//        if diagElemnts.count==3 {  print("verificando linha Diag... \(diagElemnts)") }
        
    }
}

func check(points : [String]){
    
    if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("O") }) {
        print("BATEU O")
    }
    
    else if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("X") }) {

        print("BATEU X")
    }
}


whoWin(board: ticTacToeBoard)
