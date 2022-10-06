//
//  AccountBalance.swift
//  TestsSwift
//
//  Created by Iury Vasconcelos on 06/10/22.
//

import Foundation

struct AccountBalance {
    let balance: Double
    
    func getSpecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        return balance
    }
}
