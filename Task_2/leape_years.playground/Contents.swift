import UIKit


enum WeekDays: Int {
   
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}


func getDay (startDay: inout WeekDays.RawValue) -> WeekDays {
    
    let day = WeekDays(rawValue: startDay)
     startDay += 5

    startDay%7 == 0 ? startDay = 7 : (startDay = startDay%7)
    
    return day!
    
}

var startDay = 3

for years in 1801...2020 {
    if years % 4 == 0 || years % 400 == 0 && years % 100 != 0 {
        let day = getDay(startDay: &startDay)
        print(" \(day) - 29 February - \(years)")
    }
            
}
