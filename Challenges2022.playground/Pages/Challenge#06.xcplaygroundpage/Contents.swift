/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 6: Reverse strings

 Create a program that change the order of a string without using swift foundation functions that make it automatically.
 
 * For instance, we pass it "Hello world" and it would return "dlrow olleH"
 * Use this quote of Mahatma Ghandi: "You must be the change you wish to see in the world."

*/

func reverse(of phrase: String) -> String {
    var result: String = ""
    for char in phrase {
        result = String(describing: char) + result
    }
    return result
}

func reverseRecursive(of phrase: String) -> String {
    if phrase.count == 1 {
        return phrase
    } else {
        return phrase.suffix(1) + reverseRecursive(of: String(phrase.prefix(phrase.count - 1)))
    }
}

print(reverse(of: "You must be the change you wish to see in the world."))
print(reverseRecursive(of: "You must be the change you wish to see in the world."))

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

