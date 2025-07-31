var menuChoice: Int = 0
let boardNumbers: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
var d = boardNumbers
var position: Int = 0
var endGame = false


func mainMenu() {

var condition: Int = 0

repeat {
    print("1->Start game:")
    print("2->Exit program:\n")
    if let userInput = readLine(), let option = Int(userInput){
    condition = option

    switch condition{
    case 1:
            mainGame()
    case 2:
            print("Progranm finished")
    default:
        print("Invalid option")
            }
        }
    } while condition != 2
}


func mainGame() {

repeat {
    
    print("     Tic Tac Toe!    \n ")
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
    if let userInput = readLine(), let position = Int(userInput) {
    
    d[position] = "x"

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

        }
    } while endGame == false
    print("Game ended")
}

mainMenu()

