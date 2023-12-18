/*:


&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
# Challenge 45: Water Container

 Given an array of positive integers, each representing units of stacked blocks, we have to calculate how many units of water will be trapped between them.
 * For instance: Given this array [4, 0, 3, 6, 1, 3]
        ⏹
        ⏹
 ⏹ 💧💧 ⏹
 ⏹ 💧 ⏹ ⏹ 💧  ⏹
 ⏹ 💧 ⏹ ⏹ 💧  ⏹
 ⏹ 💧 ⏹ ⏹  ⏹  ⏹
 [0, 4, 1, 0, 2, 0]
 Representing a block with ⏹ and water with 💧
*/
 
import Foundation

func unitsOfWaterTrapped(blocksStacks: [Int]) -> [Int] {
    var fullStack: [Int] = []
    var waterStack: [Int] = []
    var k = 0
    for i in 0..<blocksStacks.count-1 {
        if i < k {
            continue
        }
        for j in i+1..<blocksStacks.count {
            if blocksStacks[i] < blocksStacks[j] {
                for _ in i...j-1 {
                    fullStack.append(blocksStacks[i])
                }
                k = j
                break
            }
            if j == blocksStacks.count-1 && 
                fullStack.count != blocksStacks.count {
                for _ in i...j {
                    fullStack.append(min(blocksStacks[i], blocksStacks[j]))
                }
                k = j
                break
            }
        }
    }
        
    for (value1, value2) in zip(fullStack, blocksStacks) {
        let waterStackValue = value1 - value2
        waterStack.append(waterStackValue < 0 ? 0 : waterStackValue)
    }
    
    return waterStack
}

func checkResults(blocksStack: [Int], waterStack: [Int]) {
    print("Blocks Stack \(String(describing: blocksStack))")
    let waterStackProcesed = unitsOfWaterTrapped(blocksStacks: blocksStack)
    if waterStackProcesed ==  waterStack {
        print("✅ Water Stack \(String(describing: waterStackProcesed)) and \(waterStackProcesed.reduce(0, { $0 + $1 })) units")
    } else {
        exit(1)
    }
}

checkResults(
    blocksStack: [4, 0, 3, 6, 1, 3],
    waterStack: [0, 4, 1, 0, 2, 0]
)

checkResults(
    blocksStack: [4, 0, 3, 6],
    waterStack: [0, 4, 1]
)

checkResults(
    blocksStack: [5, 4, 3, 2, 1, 0],
    waterStack: [0, 0, 0, 0, 0, 0]
)

checkResults(
    blocksStack: [0, 1, 2, 3, 4, 5],
    waterStack: [0, 0, 0, 0, 0]
)

checkResults(
    blocksStack: [4, 0, 3, 6, 1, 3, 0, 1, 6],
    waterStack: [0, 4, 1, 0, 5, 3, 6, 5, 0]
)



/*:

&nbsp;

[< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

