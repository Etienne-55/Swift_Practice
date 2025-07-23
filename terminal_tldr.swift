var thirdCondition: Int = 0


repeat {
    print("Terminal command list")
    print("-------Nvim-------")
    print("1->Deleting commands")
    print("2->Navigation commands")
    print("3->Test function")
    print("4->Terminate")
    print(":", terminator: " ")
    if let userInput = readLine(), let option = Int(userInput) {
    thirdCondition = option

    switch thirdCondition {
    case 1:
        print("In development")
    case 2:
        print("In development")
    case 3:
        test_function()
    default:
        print("Invalid option!!")
        }
    }
} while thirdCondition != 4


func test_function() {
    print("it works")
}

func navigationNvim() {
    
}
