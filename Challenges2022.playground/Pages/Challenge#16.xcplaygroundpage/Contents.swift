/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 16: Uppercase

 Write a function to capitalise the first letter of each word.
 * Avoid the use of any system function that helps in this task.
 
*/


import Foundation

func capitalise(phrase: String) -> String {
    let words = phrase.split(separator: " ")
    var processedPhrase: String = phrase
    words.forEach { word in
        var reducedWord = word
        guard let firstLetter = reducedWord.popFirst()?.uppercased() else {
            return
        }
        let processedWord: String = firstLetter + reducedWord
        processedPhrase = processedPhrase.replacingOccurrences(of: word, with: processedWord)
    }
    
    return processedPhrase
}

print("""
    Test 1,
    Which is the color of Santiago's white horse?
    \(capitalise(phrase: "Which is the color of Santiago's white horse?"))
    
    """)

print("""
    Test 2,
    Ey, how are you?
    \(capitalise(phrase: "Ey, how are you?"))
    
    """)

print("""
    Test 3,
    Ey,            how are you?
    \(capitalise(phrase: "Ey,            how are you?"))
    
    """)

print("""
    Test 4,
    What do you like to do in your free time?
    \(capitalise(phrase: "What do you like to do in your free time?"))
    
    """)
/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
