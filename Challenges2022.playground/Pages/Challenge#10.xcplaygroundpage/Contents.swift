/*:

 
&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 10: Balanced Expressions

 Create a program to check that parenthesis, braces and brackets in a given expression are balanced.
    * Balanced means that these symbols are opened and closed in order and correctly.
    * Balanced expression: { [ a * ( c + d ) ] - 5 }
    * Wrong balanced expression: { a * ( c + d ) ] - 5 }
 
 */

import Foundation

func isBalanced(expression: String) -> Bool {
    var symbolStack: [Character] = []
    let openSym: [Character] = ["{", "[", "("]
    let closeSym: [Character] = ["}", "]", ")"]
    
    for symbol in expression {
        if openSym.contains(symbol) {
            symbolStack.append(symbol)
        } else if closeSym.contains(symbol) {
            if !symbolStack.isEmpty, symbolStack.last == openSym[closeSym.firstIndex(of: symbol)!] {
                let _ = symbolStack.popLast()
            } else {
                return false
            }
        }
    }
    return symbolStack.isEmpty
}

print("Expression 1 -> \(isBalanced(expression: "{a + b [c] * (2x2)}}}}"))")
print("Expression 2 -> \(isBalanced(expression: "{ [ a * ( c + d ) ] - 5 }"))")
print("Expression 3 -> \(isBalanced(expression: "{ a * ( c + d ) ] - 5 }"))")
print("Expression 4 -> \(isBalanced(expression: "{a^4 + (((ax4)}"))")
print("Expression 5 -> \(isBalanced(expression: "{ ] a * ( c + d ) + ( 2 - 3 )[ - 5 }"))")
print("Expression 6 -> \(isBalanced(expression: "{{{{{{(}}}}}}"))")
print("Expression 7 -> \(isBalanced(expression: "(a"))")
print("Expression 8 -> \(isBalanced(expression: "{ a * ( b } + 5 )"))")



/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

