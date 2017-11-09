//
//  Solution7.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 09/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
// What is the 10 001st prime number?

struct Solution7: Solution {
    
    func run() -> Int {
        let upperBound = 10001
        var nthPrime = 0
        var count = 0
        var i = 2
        while count < upperBound {
            if isPrime(i) {
                print(i)
                nthPrime = i
                count += 1
            }
            i += 1
        }
        return nthPrime
    }
}
