// Write a function that returns true if a Tic-Tac-Toe board has a winner

import Foundation

let ticTacToeBoard : [[String]] =  [["X","O","O"],
                                    ["O","O","X"],
                                    ["O","X","X"]]

func whoWin(board : [[String]] ){
    // var horizontal = 0
    //HORIZONTAL
    // for horizontal in 0..<3{
      
    var xElements: [String] = []
    
    var yElements: [String] = []
    var diagElemnts: [String] = []
    var diagElemnts2: [String] = []
    
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
        for e in 0..<3{
        
            diagElemnts.append(board[e][diagonal])
           
            diagonal+=1
        }
        if diagElemnts.count==3 {  print("verificando linha Diag... \(diagElemnts)")
            check(points: diagElemnts)
           }
  
        var diagonal2 = 0
        
        for e in stride(from: 2, through: 0, by: -1) {

            diagElemnts2.append(board[diagonal2][e])
           diagonal2 += 1
        }
        
        if diagElemnts2.count==3 {
            print("verificando linha Diag 2... \(diagElemnts2)")
            check(points: diagElemnts2)
            }
         
    }
}

func check(points : [String]){
    
    if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("O") }) {
        print("Venceu -> O")
    }
    
    else if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("X") }) {

        print("Venceu -> X")
    }
}


whoWin(board: ticTacToeBoard)
