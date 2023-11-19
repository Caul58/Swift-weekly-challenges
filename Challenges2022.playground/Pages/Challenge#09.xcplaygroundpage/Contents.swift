/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 9: Morse Code

 Create a program that transforms natural text to morse code and vice versa.
 
 * It has to detect which type of text was given by parameter to apply one transformation or another
 * In Morse Code supported characters are dash "-", point ".", one space " " between letters or symbols and two spaces between words "  ".
 * The Morse's Alphabet supported is the International one which appear here: https://es.wikipedia.org/wiki/Código_morse.

*/

import Foundation

// Constant
let naturalToMorse: [String: String] = [
    "A": ".-", "B": "-...", "C": "-.-.", "D": "-..", "E": ".",
    "F": "..-.", "G": "——.", "H": "....", "I": "..",
    "J": ".———", "K": "—.—", "L": ".—..", "M": "——",
    "N": "—.", "O": "———", "P": ".——.", "Q": "——.—",
    "R": ".—.", "S": "...", "T": "—", "U": "..—",
    "V": "...—", "W": ".——", "X": "—..—", "Y": "—.——",
    "Z": "——..", "0": "—————", "1": ".————", "2": "..———",
    "3": "...——", "4": "....—", "5": ".....", "6": "—....",
    "7": "——...", "8": "———..", "9": "————.", ".": ".—.—.—",
    ",": "——..——", "?": "..——..", "\"": ".—..—.", "/": "—..—."
]

let morseToNatural: [String: String] = {
    for _ in naturalToMorse {
        
    }
    return [:]
}()

func decoder(input: String) -> String {
    var result = ""
    var transformation: [String] = []

    if input.rangeOfCharacter(from: CharacterSet.letters) == nil,
       input.rangeOfCharacter(from: CharacterSet.decimalDigits) == nil {
        // Input string is Morse Code so we have to transform to natural language
        
        let arrayWords = input.split(separator: "  ")
    
        for word in arrayWords {
            let arrayChars = String(word).split(separator: " ")
            arrayChars.map { char in
                for (key, value) in naturalToMorse {
                    let stringLetter = "" + char
                    if value == stringLetter {
                        result += key.lowercased()
                    }
                    
                }
            }
            result += " "
        }
        
    } else {
        // Input string is Natural Language so we have to transform to Morse Code
        transformation = input.map { char in
            if char == " " {
                return " "
            } else {
                return naturalToMorse[char.uppercased()] ?? ""
            }
        }
        for char in transformation {
            if char == " " {
                result += char
            } else {
                result += char + " "
            }
        }
    }
    
    return result
}

let encodedString = decoder(input: "Hola, como estas?")
let naturalString = decoder(input: encodedString)
print("Original: Hola, como estas?")
print("Morse Encoded: " + encodedString)
print("Natural Decoded: " + naturalString)

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
