var condition = 0
var secondCondition: Float = 0
var thirdCondition: Int = 0

repeat {
    print("Enter a number:", terminator: " ")
    if let input = readLine(), let number = Float(input) {
        print("Looooop")
        secondCondition = number
    }
} while secondCondition <= 420

let someCharacter: Character = "a"
switch someCharacter {
case "a":
    print("The first letter")
case "z":
    print("The last letter")
default:
    print("Some other character")
}


repeat {
    print("Terminal command list")
    print("-------Nvim-------")
    print("1->Deleting commands")
    print("2->Navigation commands")
    print("3->Terminate")
    print(":", terminator: " ")
    if let userInput = readLine(), let option = Int(userInput) {
    thirdCondition = option

    switch thirdCondition {
    case 1:
        print("In development")
    case 2:
        print("In development")
    default:
        print("Invalid option!!")
        }
    }
} while thirdCondition != 3
