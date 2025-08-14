let boardNumbers: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
var d = boardNumbers
var position: Int = 0
var position2: Int = 0
var endGame = false


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
            print("     Tic Tac Toe!    \n ")
            mainGame()
    case 2: 
            print("     Tic Tac Toe!    \n ")
            hardGame()
    case 3:
            print("     Tic Tac Toe!    \n ")
            twoPlayersGame()
    case 4:
            print("Program finished")
    default:
        print("Invalid option")
            }
        }
    } while condition != 4
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
    d.removeAll()
    d = boardNumbers
    endGame = false
}


func hardGame() {

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

    } while endGame == false
    print("Game ended")
    d.removeAll()
    d = boardNumbers
    endGame = false
}

func twoPlayersGame() {
repeat {
    
    boardGame()
    print("Player x turn")

    playerInputX()

    victoryLogicX()

    boardGame()
    print("Player o turn")    

    playerInputO()

    victoryLogicO()

    } while endGame == false
    print("Game ended")
    d.removeAll()
    d = boardNumbers
    endGame = false
}


mainMenu()

