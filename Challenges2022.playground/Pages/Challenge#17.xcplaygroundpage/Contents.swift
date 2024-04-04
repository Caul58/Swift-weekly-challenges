/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 17: Obstacle race

 Make a function that check if an athlete has passed successfully an obstacle race.
 * Function will receive two parameters:
    - An string array with words "run" or "jump"
    - An string which represent the court and only can contain "_" (floor) or "|" (hurdle)
 * Function will print the result of the race:
    - If athlete do "run" in "_" (floor) and "jump" in "|" (hurdle) success and the symbol of this court part will keep as it is.
    - If athlete do "jump" in "_" (floor), the court will mutate to "x"
    - If athlete do "run" in "|" (hurdle), the court will mutate to "/"
 * Function will return a Boolean with true if the athlete pass the race or false otherwise.
 To pass the race the athlete must choose always the right option in the whole race.
*/

import Foundation

enum AthleteReactions: String {
    case run
    case jump
}

func hasAthletePassed(with reactions: [AthleteReactions], court: String) -> Bool {
    
    let max = max(reactions.count, court.count)
    let min = min(reactions.count, court.count)
    let courtArray = Array(court)
    
    var resultRace = ""
    for index in 0 ..< max {
        if index >= min {
            resultRace.append("?")
        } else {
            switch reactions[index] {
            case .run:
                courtArray[index] == "_" ? resultRace.append(courtArray[index]) : resultRace.append("/")
            case .jump:
                courtArray[index] == "|" ? resultRace.append(courtArray[index]) : resultRace.append("x")
            }
        }
    }
    print("""
        Result court: \(resultRace)
    """)
    return resultRace == court
}

print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .jump, .run, .jump, .run], court: "_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .run, .run, .jump, .run], court: "_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .run, .jump, .jump, .run], court: "_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .run, .jump, .jump, .run], court: "_|_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .jump, .run, .jump], court: "_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.run, .jump, .run, .jump, .run, .jump, .run], court: "_|_|_"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.jump, .jump, .jump, .jump, .jump], court: "|||||"))

""")
print("""
    Athlete has success in the race: \(hasAthletePassed(with: [.jump, .jump, .jump, .jump, .jump], court: "||?||"))

""")
/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
