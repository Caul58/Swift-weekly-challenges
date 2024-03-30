/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 15: Days between dates

 Write a function to get the days between two given dates in string type.
 * Each given date as a string type should follow "dd/MM/yyyy" format.
 * Function will receive two strings and return a Int.
 * Difference will be given in absolute value (no matter the order of dates).
 * Check that each string follow the right format, throw an exception otherwise.
 
 */

import Foundation

enum CustomError: Error {
    case wrongDateFormat
}

func daysBetween(date1: String, date2: String) throws -> Int {
    
    var formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    
    let strongFormat = try! Regex("^(([0-9]){2}[/]){2}([0-9]){4}$")
    
    guard date1.firstMatch(of: strongFormat) != nil,
          date2.firstMatch(of: strongFormat) != nil,
          let dateOne = formatter.date(from: date1),
          let dateTwo = formatter.date(from: date2) else {
        throw CustomError.wrongDateFormat
    }
    
    let dateOneInSeconds = dateOne.timeIntervalSince1970
    let dateTwoInSeconds = dateTwo.timeIntervalSince1970
    let difference = abs(dateOneInSeconds - dateTwoInSeconds)
    
    return Int(ceil(difference / (60 * 60 * 24)))
}

func unwrapDaysBetween(date1: String, date2: String) -> String {
    do {
        return String(try daysBetween(date1: date1, date2: date2))
    } catch CustomError.wrongDateFormat {
        return "[Error: Wrong date format]"
    } catch {
        return "[Error: Unknown error]"
    }
}


print("""
    Test 1, \(unwrapDaysBetween(date1: "01/01/2005", date2: "01/02/2005")) days between 01/01/2005 and 01/02/2005
    
    """)

print("""
    Test 2, \(unwrapDaysBetween(date1: "02/02/2005", date2: "02/02/2015")) days between 02/02/2005 and 02/02/2015
    
    """)

print("""
    Test 3, \(unwrapDaysBetween(date1: "18/05/2022", date2: "29/05/2022")) days between 18/05/2022 and 29/05/2022
    
    """)

print("""
    Test 4, \(unwrapDaysBetween(date1: "ferrari", date2: "29/04/2022")) days between ferrari and 29/04/2022
    
    """)

print("""
    Test 5, \(unwrapDaysBetween(date1: "18/5/2022", date2: "29/04/2022")) days between 18/5/2022 and 29/04/2022
    
    """)

print("""
    Test 6, \(unwrapDaysBetween(date1: "29/05/2022", date2: "18/05/2022")) days between 29/05/2022 and 18/05/2022
    
    """)
//: [Next](@next)
