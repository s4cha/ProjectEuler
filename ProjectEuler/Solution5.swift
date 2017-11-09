//
//  Solution5.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 09/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

struct Solution5: Solution {
    
    func run() -> Int {
        let upperBound = 20
        var x = upperBound
        var numberFound = 0
        while numberFound == 0 {
            var divisibleByAll = true
            for i in 1...upperBound {
                if !(x % i == 0) {
                    divisibleByAll = false
                    break
                }
            }
            if divisibleByAll {
                numberFound = x
            }
            x += 1
        }
        return numberFound
    }
}
