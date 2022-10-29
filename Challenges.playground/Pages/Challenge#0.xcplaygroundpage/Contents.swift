/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 0: Fizz Buzz

 Write a program to show in console numbers between 1 and 100 (both included), replacing following:
    
 - Multiple of 3 by the word "fizz".
 - Multiple of 5 by the word "buzz".
 - Multiple of 3 and 5 at the same time by the word "fizzbuzz".
*/

//: ## Solution 1: Recursive

func fizzbuzzRecursive(fromZeroTo value: Int) -> String {
    var resultString = ""
    if value == 0 {
        return resultString
    }
    switch (value.isMultiple(of: 3), value.isMultiple(of: 5)) {
    case (true, true):
        resultString = fizzbuzzRecursive(fromZeroTo: value - 1) + "\nfizzbuzz"
    case (false, true):
        resultString = fizzbuzzRecursive(fromZeroTo: value - 1) + "\nbuzz"
    case (true, false):
        resultString = fizzbuzzRecursive(fromZeroTo: value - 1) + "\nfizz"
    case (false, false):
        resultString = fizzbuzzRecursive(fromZeroTo: value - 1) + "\n\(value)"
    }
    return resultString
}


//: ## Solution 2: Iterative

func fizzbuzzIterative(fromZeroTo value: Int) -> String {
    var resultString = ""
    for i in 1...value {
        let isMultipleOf3 = i.isMultiple(of: 3)
        let isMultipleOf5 = i.isMultiple(of: 5)
        
        if isMultipleOf3 && isMultipleOf5 {
            resultString += "\nfizzbuzz"
        } else if isMultipleOf3 {
            resultString += "\nfizz"
        } else if isMultipleOf5 {
            resultString += "\nbuzz"
        } else {
            resultString += "\n\(i)"
        }
    }
    return resultString
}

//: ### Utilities for a properly comparation

import Foundation

func measureTime(inExecute function: () -> Void) -> Double {
    let start = DispatchTime.now()
    function()
    let end = DispatchTime.now()

    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
    return Double(nanoTime) / 1_000_000_000 // Technically could overflow for long running tests
}

//: ### Result first solution

let timeRecursive = measureTime {
    print(fizzbuzzIterative(fromZeroTo: 1000))
}
print("Time to evaluate problem fizzbuzzIterative: \(timeRecursive) seconds")

//: ### Result second solution

let timeIterative = measureTime {
    print(fizzbuzzRecursive(fromZeroTo: 1000))
}
print("Time to evaluate problem fizzbuzzRecursive: \(timeIterative) seconds")

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
