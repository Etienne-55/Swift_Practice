import Foundation


print("Hello")

var myVariable = 0
let myConst = 30.2
let newDouble = myConst + 21.12
let emptyArray: [String] = []

var numberList = emptyArray

myVariable = 55

let myAge = "My age is \(newDouble + 2)"

numberList.append("12")
numberList.append("332")
numberList.append("24")
numberList.append("22")
numberList.append("52")

func getNumber(){
    print("Enter a number:", terminator: " ")
    if let input = readLine(), let number = Int(input) {
        let sum = number + 2
        print("The number is \(sum)")
    }
}

getNumber()
