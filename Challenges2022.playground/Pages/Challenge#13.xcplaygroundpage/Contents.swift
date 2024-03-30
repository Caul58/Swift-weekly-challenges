/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 13: Recursive factorial

 Write a function which calculates and returns factorial of a given number in a recursive way.
 
 */
import Foundation

func recursiveFactorial(number: Int) -> Int? {
    (number <= 0) ? nil : (number <= 1) ? 1 : number * (recursiveFactorial(number: number - 1)!)
}

func unwrapRecursiveFactorial(number: Int) -> String {
    guard let result = recursiveFactorial(number: number) else {
        return "No tiene factorial"
    }
    return String(result)
}


print("""
    Test 1, factorial de 0:
    \(unwrapRecursiveFactorial(number: 0))
    
    """)

print("""
    Test 2, factorial de 7:
    \(unwrapRecursiveFactorial(number: 7))
    
    """)

print("""
    Test 3, factorial de 10:
    \(unwrapRecursiveFactorial(number: 10))
    
    """)

print("""
    Test 4, factorial de 1:
    \(unwrapRecursiveFactorial(number: 1))
    
    """)

print("""
    Test 5, factorial de -1:
    \(unwrapRecursiveFactorial(number: -1))
    
    """)

print("""
    Test 6, factorial de 4:
    \(unwrapRecursiveFactorial(number: 4))
    
    """)

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
