var randomInput:Int = 0
var day:Int = 0

func dayOfTheWeek() {
  
randomInput = Int.random(in: 1...12)

day = randomInput

    if day == 1 {
        print("Monday")
    } else if day == 2 {
        print("Tuesday")
    } else if day == 3 {
        print("Wensday")
    } else if day == 4 {
        print("Thursday")
    } else if day == 5 {
        print("Friday")
    } else if day == 6 {
        print("Saturday")
    } else if day == 7 {
        print("Monday")
    } else  {
        print("Error")
    }

}

dayOfTheWeek()
