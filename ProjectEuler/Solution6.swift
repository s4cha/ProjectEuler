//
//  Solution6.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 09/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

// The sum of the squares of the first ten natural numbers is,
// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,
// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

struct Solution6: Solution {
    
    func run() -> Int {
        let upperBound = 100
        let collection = Array(1...upperBound)
        let sumOfTheSquares = collection.reduce(0) { $0 + $1.squared() }
        let squareOfTheSum = collection.reduce(0,+).squared()
        return squareOfTheSum - sumOfTheSquares
    }
}


extension Int {
    func squared() -> Int {
        return self * self
    }
}
