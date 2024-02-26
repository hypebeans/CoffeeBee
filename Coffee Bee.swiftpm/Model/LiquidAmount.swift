//
//  LiquidAmount.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import Foundation

struct LiquidAmount: Comparable {
    
    var amount: Int
    let max: Int
    
    init(amount: Int = 100, max: Int = 100) {
        self.amount = amount
        self.max = max
    }
    
    init(max: Int = 100, _ percentage: Float) {
        self.max = max
        self.amount = Int(percentage * Float(max))
    }
    
    var percentage: Float {
        Float(amount) / Float(max)
    }
    
    static func < (lhs: LiquidAmount, rhs: LiquidAmount) -> Bool {
        return lhs.percentage < rhs.percentage
    }
}

