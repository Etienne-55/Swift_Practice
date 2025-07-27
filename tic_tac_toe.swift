let boardNumbers: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
var d = boardNumbers
var position: Int = 0
var endGame = false


func startMenu() {

mainGame()
print("Game ended!")

}


func mainGame() {

repeat {
    
    print("Choose a position: \n")
    if let userInput = readLine(), var position = Int(userInput) {
    
    d[position] = "x"

    if d[position] != "x" && d[position] != "o" {
        d[position] = "x"
    } else {
        print("Invalid play.\n")
    }
    
    if position > 8 {
        print("Invalid number")
    } else {
        d[position] = "x"
    } 

    let randomPosition = Int.random(in: 0...8)
    position = randomPosition

    if d[position] != "x" && d[position] != "o" {
        d[position] = "o"
    } else {
        print("Invalid play.\n")
    }

    if position > 9 {
        endGame = true
    } else if d[0] == d[1] && d[1] == d[2]{
        endGame = true
    } else if d[3] == d[4] && d[4] == d[5]{
        endGame = true
    } else if d[6] == d[7] && d[7] == d[8]{
        endGame = true
    } else if d[0] == d[3] && d[3] == d[6]{
        endGame = true
    } else if d[1] == d[4] && d[4] == d[7]{
        endGame = true
    } else if d[2] == d[5] && d[5] == d[8]{
        endGame = true
    } else if d[0] == d[4] && d[4] == d[8]{
        endGame = true
    } else if d[2] == d[4] && d[4] == d[6]{
        endGame = true
}

    print("     Tic Tac Toe!    \n ")
    print("PLayer 1 (X) - Player 2 (O)\n")

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
    } while endGame == false
}

startMenu()

