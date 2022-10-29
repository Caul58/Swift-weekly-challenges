/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 3: Is this number prime?

 Write a program that checks if a number is or not prime.
 A prime number is a natural number greater than 1 which has only two positive divisors: itself and 1.
 Done that, has to print prime numbers between 1 and 100.

*/

func isPrime(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2 ..< number {
        if number.isMultiple(of: i) {
            return false
        }
    }
    return true
}

var count = 0
(1...100).forEach { value in
    if isPrime(number: value) {
        print("\(value) is prime")
        count+=1
    }
}
print("Prime numbers in range: \(count)")
/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
