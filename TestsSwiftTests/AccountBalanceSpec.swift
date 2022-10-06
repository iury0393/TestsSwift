//
//  AccountBalanceSpec.swift
//  TestsSwiftTests
//
//  Created by Iury Vasconcelos on 06/10/22.
//

import XCTest
@testable import TestsSwift

final class AccountBalanceSpec: XCTestCase {
    
    var account: AccountBalance?
    
    func testGetSpecialBalance100() {
        account = AccountBalance(balance: 99)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 109, "O saldo menos que 100, deve retornar o saldo + 10")
    }
    
    func testGetSpecialBalance900() {
        account = AccountBalance(balance: 900)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 1900, "O saldo maior que 500, deve retornar o saldo + 1000")
    }
    
    func testGetSpecialBalance400() {
        account = AccountBalance(balance: 400)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 400, "O saldo menor que 100 e maior eu 500, deve retornar o saldo + 1000")
    }
}
