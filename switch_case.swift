func mainMenu() {

var input: Int = 0

repeat {
    print("Choose the day of the week: 1(monday) to 7(sunday)")
    if let userInput = readLine(), let option = Int(userInput){
    input = option

    switch input{
    case 1:
            print("Monday")
    case 2:
            print("Tuesday")
    case 3:
            print("Wensday")
    case 4:
            print("Thursday")
    case 5:
            print("Friday")
    case 6: 
            print("Saturday")
    case 7:
            print("Sunday")
    default:
        print("Invalid option")
            }
        }
    } while input > 8
}

mainMenu()
