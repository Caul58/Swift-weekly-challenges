/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 43: Special by Halloween.

 This is a Halloween special one.
 We have to create a program with following input:
 * User wants "trick or treat"
 * An array of people with these elements:
    - Name of the kid
    - Age
    - Height in centimeters.

 If user has chosen trick, our program will return random scares with following rules:
 * One scare by each two chars in the person name.
 * Two scares by each even age.
 * Three scares by each 100 cm in height between all the people.
 * Possible scares: 🎃 👻 💀 🕷 🕸 🦇

 If user has chosen treat, our program will return random sweets with following rules:
 * One sweet by each letter in the name.
 * One sweet by each 3 years old till 10 years as maximun by each person.
 * Two sweets by each 50 cms in height till 150 cms as maximun by each person.
 * Possible sweets: 🍰 🍬 🍡 🍭 🍪 🍫 🧁 🍩

*/

import Foundation

struct Person: Equatable {
    var name: String
    var age: Int
    var height: Int
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.name == rhs.name &&
        lhs.age == rhs.age &&
        lhs.height == rhs.height
    }
}

enum HalloweenOption {
    case trick
    case treat
}

func halloween(option: HalloweenOption, people: [Person]) -> String {
    
    var result = ""
    var scares = "🎃👻💀🕷🕸🦇"
    var sweets = "🍰🍬🍡🍭🍪🍫🧁🍩"
    var peopleHeight = 0
    
    for person in people {
        switch option {
        case .trick:
            var scaresCounter = 0
            // Name
            scaresCounter = Int(person.name.replacingOccurrences(of: " ", with: "").count / 2)
            // Age
            if person.age.isMultiple(of: 2) {
                scaresCounter += 2
            }
            // Height
            peopleHeight+=person.height
            if people.last == person {
                scaresCounter += Int(peopleHeight / 100) * 3
            }
            // Partial String for current person
            result += String((0..<scaresCounter).compactMap { _ in
                scares.randomElement()
            })
        case .treat:
            var sweetsCounter = 0
            // Name
            sweetsCounter = person.name.replacingOccurrences(of: " ", with: "").count
            // Age
            sweetsCounter += (person.age > 10 ?  0 : person.age / 3)
            // Height
            sweetsCounter += (person.height > 150 ? 0 : (person.height / 50) * 2)
            // Partial String for current person
            result += String((0..<sweetsCounter).compactMap { _ in
                sweets.randomElement()
            })
        }
    }
    
    return result
    
}

print(halloween(option: .trick,
                people: [
                    .init(name: "Carlos", age: 38, height: 175),
                    .init(name: "Sara", age: 9, height: 110),
                    .init(name: "Luis", age: 8, height: 100)
                ]
               )
)

print(halloween(option: .treat,
                people: [
                    .init(name: "Carlos", age: 38, height: 175),
                    .init(name: "Sara", age: 9, height: 110),
                    .init(name: "Luis", age: 8, height: 100)
                ]
               )
)
/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
