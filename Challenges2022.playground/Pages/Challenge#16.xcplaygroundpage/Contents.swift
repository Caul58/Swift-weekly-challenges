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
    let processedWords: [String] =  words.map { word in
        guard let modified = word.first?.uppercased() else {
            return ""
        }
        var reducedWord = word
        let _ = reducedWord.popFirst()
        return modified + reducedWord
    }
    return processedWords.joined(separator: " ")
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
