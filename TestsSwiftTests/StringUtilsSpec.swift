//
//  StringUtilsSpec.swift
//  TestsSwiftTests
//
//  Created by Iury Vasconcelos on 06/10/22.
//

import XCTest
@testable import TestsSwift

final class StringUtilsSpec: XCTestCase {
    
    func testIsValidEmail() {
        let email = "curso@gmail.com"
        let value = email.isValidEmail()
        
        XCTAssertTrue(value, "Não é um email válido.")
    }
    
    func testRemoveWhiteSpace() {
        let text = "Olá Mundo!"
        let newText = text.removeWhiteSpace()
        
        XCTAssert(newText == "OláMundo!", "Não removeu os espaços.")
    }
    
    func testReplaceText() {
        let text = "Iury"
        let newText = text.replace(string: "I", replacement: "L")
        
        XCTAssert(newText == "Lury", "Não fez a substituição.")
    }
}
