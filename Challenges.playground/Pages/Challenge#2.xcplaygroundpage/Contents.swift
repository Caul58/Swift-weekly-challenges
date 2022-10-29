/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 2: Fibonacci Sequence

 Write a program that prints the 50 first Fibonacci Sequence elements, starting in 0.
 * Fibonacci Sequence is composed by a sequence of numbers where the next element is the addition of the previous two.
 * 0, 1, 1, 2, 3, 5, 8, 13...
*/


func fibonacciSequence(till element: Int) {
    var fibonacciSequenceCache: [Int] = [0, 1]
    for i in 0...element-1 {
        fibonacciSequenceCache.append(
            fibonacciSequenceCache[0] +
            fibonacciSequenceCache[1]
        )
        print("\(String(describing: fibonacciSequenceCache[0]))"+"\(i==element-1 ? "" : ", ")")
        fibonacciSequenceCache.removeFirst()
    }
}

fibonacciSequence(till: 50)

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
