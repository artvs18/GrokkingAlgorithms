//
//  main.swift
//  GrokkingAlgorithms
//
//  Created by Artemy Volkov on 07.02.2023.
//
import Darwin

let clock = ContinuousClock()
let numbers = Array(-1_000_000...1_000_000)
var numberToFind = 0

print("Enter number to find:")

if let input = readLine() {
    numberToFind = Int(input) ?? 0
}


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

print(clock.measure {
    if let index = binarySearch(in: numbers, find: numberToFind) {
        print("Index of \(numberToFind): \(index)")
    } else {
        print("No element found")
    }
})


