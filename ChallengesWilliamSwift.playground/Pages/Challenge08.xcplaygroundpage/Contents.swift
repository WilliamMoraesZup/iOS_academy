// Write a function that returns true if a Tic-Tac-Toe board has a winner

import Foundation

let ticTacToeBoard : [[String]] =  [["X","X","X"],
                                    ["O","O","X"],
                                    ["O","X","X"]]

func whoWin(board : [[String]] ){
    
    //Checagem horizontal
    //    for tic in ticTacToeBoard {
    //        check(points: tic)
    //
    //    }
    
    var vertical : [String] = []
    var horizontal : [String] = []
    
    //Checagem Vertical
    for j in 0..<3 {
            for v in 0..<3 {
            if  vertical.count == 3{
                check(points : vertical)
                vertical = []
            
            vertical.append(ticTacToeBoard[v][j])
            
            for h in 0..<3 {
                if horizontal.count == 3{
                    check(points : horizontal)
                    horizontal = []
                }
                horizontal.append(ticTacToeBoard[v][h])
            }
                
                
            }
        }
    }
}

func check(points : [String]){
    print(points)
    if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("O") }) {
        print("BATEU O")
    }
    
    if points.count == 3 && points.allSatisfy ({ $0.elementsEqual("X") }) {

        print("BATEU X")
    }
}

whoWin(board : ticTacToeBoard)


