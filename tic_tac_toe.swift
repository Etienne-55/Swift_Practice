let boardNumbers: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
var d = boardNumbers
var position: Int = 0
var position2: Int = 0
var endGame = false

// TODO: fix placement bugs
func mainMenu() {

var condition: Int = 0

repeat {
    print("1->Easy game")
    print("2->Hard game")
    print("3->Two players game")
    print("4->Exit program\n")
    if let userInput = readLine(), let option = Int(userInput){
    condition = option

    switch condition{
    case 1:
            cleanArrayAndPLayNormal()
    case 2: 
            cleanArrayAndPLayHard()
    case 3:
            cleanArrayAndPLayTwoPlayers()
    case 4:
            print("Program finished")
    default:
        print("Invalid option")
            }
        }
    } while condition != 4
}


func cleanArrayAndPLayNormal() {

d.removeAll()
d = boardNumbers
endGame = false
print("     Tic Tac Toe!    \n ")
mainGame()

}


func cleanArrayAndPLayHard() {

d.removeAll()
d = boardNumbers
endGame = false
print("     Tic Tac Toe!    \n ")
hardGame()

}


func cleanArrayAndPLayTwoPlayers() {

d.removeAll()
d = boardNumbers
endGame = false
print("     Tic Tac Toe!    \n ")
twoPlayersGame()

}


func mainGame() {

repeat {
    
    boardGame()

    victoryLogicX()

    playerInputX()

    let randomPositionArray = Array(0...8).shuffled()

    let position0 = randomPositionArray[0]
    let position1 = randomPositionArray[1]
    let position2 = randomPositionArray[2]
    let position3 = randomPositionArray[3]
    let position4 = randomPositionArray[4]
    let position5 = randomPositionArray[5]
    let position6 = randomPositionArray[6]
    let position7 = randomPositionArray[7]
    let position8 = randomPositionArray[8]

    if d[position0] != "x" && d[position0] != "o"{
        d[position0] = "o"
    } else if d[position1] != "x" && d[position1] != "o"{
        d[position1] = "o" 
    } else if d[position2] != "x" && d[position2] != "o"{
        d[position2] = "o"
    } else if d[position3] != "x" && d[position3] != "o"{
        d[position3] = "o" 
    } else if d[position4] != "x" && d[position4] != "o"{
        d[position4] = "o"
    } else if d[position5] != "x" && d[position5] != "o"{
        d[position5] = "o"
    } else if d[position6] != "x" && d[position6] != "o"{
        d[position6] = "o"
    } else if d[position7] != "x" && d[position7] != "o"{
        d[position7] = "o"
    } else if d[position8] != "x" && d[position8] != "o"{
        d[position8] = "o"
    } else{
        print("Error with the bot")
    } 

    victoryLogicO()

    } while endGame == false
    print("Game ended")
}


func hardGame() {

repeat {
    
    boardGame() 
    
    victoryLogicX()

    if let userInput = readLine(), let position = Int(userInput) {
    
    d[position] = "x"
//BUG: fix
    if d[position] != "x" && d[position] != "o" {
        d[position] = "x"
    } else {
        print("\n")
    }
    
    if position > 8 {
        print("Invalid number")
    } else {
        d[position] = "x"
    } 

    let randomPositionArray = Array(0...8).shuffled()

    let position0 = randomPositionArray[0]
    let position1 = randomPositionArray[1]
    let position2 = randomPositionArray[2]
    let position3 = randomPositionArray[3]
    let position4 = randomPositionArray[4]
    let position5 = randomPositionArray[5]
    let position6 = randomPositionArray[6]
    let position7 = randomPositionArray[7]
    let position8 = randomPositionArray[8]

    if d[0] == "x" && d[0] != "o" && d[8] != "x" && d[0] != "o"{
        d[8] = "o"
    } else if d[8] == "x" && d[8] != "o" && d[0] != "x" && d[0] != "o"{
        d[0] = "o"
    } else if d[2] == "x" && d[2] != "o" && d[6] != "x" && d[6] != "o"{
        d[6] = "o"
    } else if d[6] == "x" && d[6] != "o" && d[2] != "x" && d[2] != "o"{
        d[2] = "o"
    } else if d[3] == "x" && d[3] != "o" && d[5] != "x" && d[5] != "o"{
        d[5] = "o"
    } else if d[5] == "x" && d[5] != "o" && d[3] != "x" && d[3] != "o"{
        d[3] = "o"
    } else if d[1] == "x" && d[1] != "o" && d[7] != "x" && d[7] != "o"{
        d[7] = "o"
    } else if d[7] == "x" && d[7] != "o" && d[1] != "x" && d[1] != "o"{
        d[1] = "o"
    } else if d[6] == "x" && d[6] != "o" && d[8] != "x" && d[8] != "o"{
        d[8] = "o"
    } else if d[8] == "x" && d[8] != "o" && d[6] != "x" && d[6] != "o"{
        d[6] = "o"
    } else if d[0] == "x" && d[0] != "o" && d[2] != "x" && d[2] != "o"{
        d[2] = "o"
    } else if d[2] == "x" && d[2] != "o" && d[0] != "x" && d[0] != "o"{
        d[0] = "o"
    } else if d[0] == "x" && d[0] != "o" && d[4] != "x" && d[4] != "o"{
        d[4] = "o"
    } else if d[2] == "x" && d[2] != "o" && d[4] != "x" && d[4] != "o"{
        d[3] = "o"
    } else if d[4] == "x" && d[4] != "o" && d[3] != "x" && d[3] != "o"{
        d[3] = "o"
    } else if d[4] == "x" && d[4] != "o" && d[8] != "x" && d[8] != "o"{
        d[3] = "o"
    } else if d[position1] != "x" && d[position1] != "o"{
        d[position1] = "o" 
    } else if d[position2] != "x" && d[position2] != "o"{
        d[position2] = "o"
    } else if d[position3] != "x" && d[position3] != "o"{
        d[position3] = "o" 
    } else if d[position4] != "x" && d[position4] != "o"{
        d[position4] = "o"
    } else if d[position5] != "x" && d[position5] != "o"{
        d[position5] = "o"
    } else if d[position6] != "x" && d[position6] != "o"{
        d[position6] = "o"
    } else if d[position7] != "x" && d[position7] != "o"{
        d[position7] = "o"
    } else if d[position8] != "x" && d[position8] != "o"{
        d[position8] = "o"
    } else{
        print("Error with the bot")
    } 

    victoryLogicO()

        }
    } while endGame == false
    print("Game ended")
}

func twoPlayersGame() {
repeat {
    
    boardGame()

    if let userInput = readLine(), let position = Int(userInput) {
    
    d[position] = "x"

    if d[position] != "x" && d[position] != "o" {
        d[position] = "x"
    } else {
        print("\n")
    }
   //BUG: fix 
    if position > 8 {
        print("Invalid number")
    } else {
        d[position] = "x"
    } 

    victoryLogicX()

    if let userInput2 = readLine(), let position2 = Int(userInput2) {
    
    d[position2] = "o"

    if d[position2] != "x" && d[position2] != "o" {
        d[position2] = "x"
    } else {
        print("\n")
    }
    
    if position2 > 8 {
        print("Invalid number")
    } else {
        d[position2] = "o"
    } 
}

    victoryLogicO()

        }
    } while endGame == false
    print("Game ended")
}


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

mainMenu()

