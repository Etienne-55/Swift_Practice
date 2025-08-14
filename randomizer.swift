var firstDice:Int? = nil
var secondDice:Int? = nil 
let emptyArray: [String] = []

var numberArray = emptyArray

func randomizer() {
    repeat {

    firstDice = Int.random(in: 1...6)
    print("First player result: \(firstDice!)")

    secondDice = Int.random(in: 1...6)
    print("Second player result: \(secondDice!)")

    } while firstDice != secondDice 
}

func arrayTest() {

    numberArray.append("1")
    numberArray.append("2")
    numberArray.append("3")
    numberArray.append("4")
    numberArray.append("5")
    numberArray.append("6")

    let printArray = ["61", "63", "45", "55"][2]
    print(printArray)
    let randomArray = Int.random(in: 0..<numberArray.count)
    print(numberArray[randomArray])
}

arrayTest()
