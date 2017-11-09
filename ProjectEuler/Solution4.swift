//
//  Solution4.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 08/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import Foundation

// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
// Find the largest palindrome made from the product of two 3-digit numbers.

struct Solution4: Solution {
    
    func isPalindrome(_ number: Int) -> Bool {
        let s1 = "\(number)"
        let s2 = String(s1.reversed())
        return s1 == s2
    }
    
    func run() -> Int {
        let upperBound = 1000
        var maximumProductFound = 0
        for i in 0..<upperBound {
            for j in 0..<upperBound {
                let product = i*j
                if isPalindrome(product) {
                    maximumProductFound = max(maximumProductFound, product)
                }
            }
        }
        return maximumProductFound
    }
}
