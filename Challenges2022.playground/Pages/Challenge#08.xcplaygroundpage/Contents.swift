/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 8: From decimal to binary

 Create a program that transforms a decimal number into a binary number without using system functions that make it automatically

*/

import Foundation

func integerDecimalToBinary(number: Int) -> String {
    var factor = number
    var result = ""

    while factor != 0 {
        result += String(describing: factor % 2)
        factor /= 2
    }
    return result.isEmpty ? "0" : result
}

func fractionalDecimalToBinary(number: Double) -> String {
    var result = "."
    var factor = number
    for _ in 1...10 {
        result = result + "\(factor * 2 > 1 ? "1" : "0")"
        factor *= 2
        if factor > 1 {
            factor -= 1
        }
    }
    return result
}

func transformDecimalToBinary(number: Double) -> String {
    let integerPart = integerDecimalToBinary(number: Int(floor(number)))
    var fractionalPart = ""
    if number - floor(number) > 0 {
        fractionalPart = fractionalDecimalToBinary(number: number - floor(number))
    }
    return "\(integerPart)\(fractionalPart)"
}

print(transformDecimalToBinary(number: 1234))
print(transformDecimalToBinary(number: 1234.5678))
print(transformDecimalToBinary(number: 0))
print(transformDecimalToBinary(number: 387))

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
