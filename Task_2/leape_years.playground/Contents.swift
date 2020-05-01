import UIKit

var str = "Hello, playground"


enum WeekDays: Int {
   
    case Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7
}

func getDay (startDay: inout Int) -> WeekDays {
    
    let day = WeekDays(rawValue: startDay)
     startDay += 5

    if startDay%7 == 0 {
        startDay = 7
    } else if startDay>7 {
        startDay = startDay%7
    }
    
    return day!
    }

var startDay = 3
for years in 1801...2020 {
    if years % 4 == 0 || years % 400 == 0 && years % 100 != 0 {
        let day = getDay(startDay: &startDay)
        print(" \(day) - 29 February - \(years)")
    }
            
}
