/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 44: Boomerang

 Create a function that returns the total number of boomerangs into an integer array and print each one.
 * A boomerang is a sequence of three numbers, where the first and the last are equals, and the second is different. For instance [2, 1, 2]
 * In this array [2, 1, 2, 3, 3, 4, 2, 4] there are two boomerangs ([2, 1, 2] and [4, 2, 4]).

*/

func checkBoomerangs(from intArray: [Int]) -> Array<Array<Int>> {
    var resultArray: Array<Array<Int>> = []
    var iterator = 0
    
    intArray.forEach { currentElement in
        if intArray.count > iterator + 2 {
            let nextElement = intArray[iterator + 1]
            let nextElementBis = intArray[iterator + 2]
            if currentElement == nextElementBis && currentElement != nextElement {
                resultArray.append([currentElement, nextElement, nextElementBis])
            }
        }
        iterator += 1
    }
    
    return resultArray
}

print(checkBoomerangs(from: [2, 1, 2, 3, 3, 4, 2, 4]))
print(checkBoomerangs(from: [2, 1, 2, 1, 3, 4, 2, 4]))

/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

