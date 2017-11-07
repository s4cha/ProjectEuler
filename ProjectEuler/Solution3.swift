//
//  Solution3.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 07/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

struct Solution3: Solution {
    
    func isPrime(_ number:Int) -> Bool {
        let squareRoot = Int(sqrt(Double(number)))
        for i in 2..<squareRoot where number % i == 0 {
            return false
        }
        return true
    }
    
    func run() -> Int {
        let number = 600851475143
        var i = Int(sqrt(Double(number)))
        while i >= 2 {
            if number % i == 0 && isPrime(i) {
                return i
            }
            i -= 1
        }
        return 0
    }
}


