//: Playground - noun: a place where people can play

import UIKit

func mergeSort(input: [Int]) -> [Int] {
    guard input.count > 1 else { return input }
    let leftArray = Array(input[0..<(input.count / 2)])
    let rightArray = Array(input[input.count / 2..<input.count])
    return merge(left: mergeSort(input: leftArray), right: mergeSort(input: rightArray))
}

private func merge(left: [Int], right: [Int]) -> [Int] {
    var result = [Int]()
    var left = left, right = right
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            result.append(left.removeFirst())
        } else {
            result.append(right.removeFirst())
        }
    }
    return result + left + right
}

// MARK: - Test cases
let testArray = [1,7,5,4,3,9,8,2,6,0]
let sortedArray = mergeSort(input: testArray)

print("Origianl array is \(testArray)")
print("Sorted array is \(sortedArray)")
print("-------------------------------")

let edgeTestArray = [1]
let sortedEdgeTestArray = mergeSort(input: edgeTestArray)
print("Origianl array is \(edgeTestArray)")
print("Sorted array is \(sortedEdgeTestArray)")
print("-------------------------------")
