func boardGame() {

    print("PLayer 1 (X) - Player 2 (O)\n")
    print("Choose a position: \n")
    
    print("       |       |    \n")
    print("  \(d[0])    |  \(d[1])    |  \(d[2])  \n")
    print("_______|_______|_______\n")
    print("       |       |       \n")
    print("  \(d[3])    |  \(d[4])    |  \(d[5])  \n")
    print("_______|_______|_______\n")
    print("       |       |    \n")
    print("  \(d[6])    |  \(d[7])    |  \(d[8])  \n")
    print("       |       |       \n")

}


func playerInputX() {

    if let userInput = readLine(), let position = Int(userInput) {

        if d[position] == "o" {
            print("Invalid position")
        }else{
            d[position] = "x"
       }
    }
}


func playerInputO() {}
//BUG: 

func victoryLogicX() {
    if position > 9 {
        endGame = true
    } else if d[0] == "x" && d[1] == "x" && d[2] == "x"{
        print("x won")
        endGame = true
    } else if d[3] == "x" && d[4] == "x" && d[5] == "x"{
        print("x won")
        endGame = true
    } else if d[6] == "x" && d[7] == "x" && d[8] == "x"{
        print("x won")
        endGame = true
    } else if d[0] == "x" && d[3] == "x" && d[6] == "x"{
        print("x won")
        endGame = true
    } else if d[1] == "x" && d[4] == "x" && d[7] == "x"{
        print("x won")
        endGame = true
    } else if d[2] == "x" && d[5] == "x" && d[8] == "x"{
        print("x won")
        endGame = true
    } else if d[0] == "x" && d[4] == "x" && d[8] == "x"{
        print("x won")
        endGame = true
    } else if d[2] == "x" && d[4] == "x" && d[6] == "x"{
        print("x won")
        endGame = true
    }
}

func victoryLogicO() {
    if position > 9 {
        endGame = true
    } else if d[0] == "o" && d[1] == "o" && d[2] == "o"{
        print("o won")
        endGame = true
    } else if d[3] == "o" && d[4] == "o" && d[5] == "o"{
        print("o won")
        endGame = true
    } else if d[6] == "o" && d[7] == "o" && d[8] == "o"{
        print("o won")
        endGame = true
    } else if d[0] == "o" && d[3] == "o" && d[6] == "o"{
        print("o won")
        endGame = true
    } else if d[1] == "o" && d[4] == "o" && d[7] == "o"{
        print("o won")
        endGame = true
    } else if d[2] == "o" && d[5] == "o" && d[8] == "o"{
        print("o won")
        endGame = true
    } else if d[0] == "o" && d[4] == "o" && d[8] == "o"{
        print("o won")
        endGame = true
    } else if d[2] == "o" && d[4] == "o" && d[6] == "o"{
        print("o won")
        endGame = true
    }
}
