//
//  Solution1.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 07/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

protocol Solution {
    func run() -> Int
}

// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
//Find the sum of all the multiples of 3 or 5 below 1000.
struct Solution1: Solution {
    
    func run() -> Int {
        let mutliples = Array(1..<1000).filter { $0 % 3 == 0 || $0 % 5 == 0 }
        return mutliples.reduce(0, +)
    }
}



