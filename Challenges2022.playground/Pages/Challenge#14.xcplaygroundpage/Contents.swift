/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 14: Armstrong number

 Write a function to calculate if a given number is an Armstrong number.
 
 */

import Foundation

func isArmstrong(_ num: Int) -> Bool {
    
    if num < 0 {
        return false
    }
    
    let numberString = String(num)
    let power = Double(numberString.count)
    let sum = numberString.reduce(0) { res, char in
        res + Int(pow(Double(char.description) ?? 0, power))
    }
    return sum == num
}

print("""
    Test 1, is an Armstrong number 371:
    \(isArmstrong(371))
    
    """)

print("""
    Test 2, is an Armstrong number -371:
    \(isArmstrong(-371))
    
    """)

print("""
    Test 3, is an Armstrong number 372:
    \(isArmstrong(372))
    
    """)

print("""
    Test 4, is an Armstrong number 0:
    \(isArmstrong(0))
    
    """)

print("""
    Test 5, is an Armstrong number 9:
    \(isArmstrong(9))
    
    """)

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
