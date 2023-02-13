//
//  BinarySearch.swift
//  GrokkingAlgorithms
//
//  Created by Artemy Volkov on 13.02.2023.
//

import Darwin

func binarySearch() {
    
    let numbers = Array(-1_000_000...1_000_000)
    
    print("Enter number to find:")
    let numberToFind = Int(readLine()!) ?? 0
    
    func binarySearch(in numbers: [Int], find number: Int) -> Int? {
        var low = 0
        var high = numbers.count - 1
        
        while low <= high {
            let mid = Int(floor(Double(low + high) / 2.0))
            let guess = numbers[mid]
            
            if guess < number {
                low = mid + 1
            } else if guess > number {
                high = mid - 1
            } else {
                return mid
            }
        }
        return nil
    }
    
    if let index = binarySearch(in: numbers, find: numberToFind) {
        print("Index of \(numberToFind): \(index)")
    } else {
        print("No element found")
    }
}
