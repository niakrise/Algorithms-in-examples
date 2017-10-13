//
//  Given array of integers. You have to search through this array and
//  you also have to return true if you found the search value inside this array,
//  otherwise you have to return false.
//
//  Created by Zoia Pribytkova on 10.12.2017.
//

import UIKit

let numbers = Array(1..<101)

func linearSearch(for value: Int, from array: [Int]) -> Bool {
    
    for number in array {
        if number == value {
            return true
        }
    }
    return false
}

print(linearSearch(for: 4, from: numbers))

func binarySearch(for value: Int, from array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == value {
            return true
        }
        
        if value < middleValue {
            rightIndex = middleIndex - 1
        }
        if value > middleValue {
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(for: 18, from: numbers))
