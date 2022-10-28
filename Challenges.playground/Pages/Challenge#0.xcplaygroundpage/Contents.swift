/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 0: Fizz Buzz

 Write a program to show in console numbers between 1 and 100 (both included), replacing following:
    
 - Multiple of 3 by the word "fizz".
 - Multiple of 5 by the word "buzz".
 - Multiple of 3 and 5 at the same time by the word "fizzbuzz".
*/

for i in 1...100 {
    let isMultipleOf3 = i.isMultiple(of: 3)
    let isMultipleOf5 = i.isMultiple(of: 5)
    
    if isMultipleOf3 && isMultipleOf5 {
        print("fizzbuzz")
    } else if isMultipleOf3 {
        print("fizz")
    } else if isMultipleOf5 {
        print("buzz")
    } else {
        print(i)
    }
}
/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
