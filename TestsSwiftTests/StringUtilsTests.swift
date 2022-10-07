//
//  StringUtilsTests.swift
//  TestsSwiftTests
//
//  Created by Iury Vasconcelos on 07/10/22.
//

import Quick
import Nimble
@testable import TestsSwift

class StringUtilsTests: QuickSpec {

    override func spec() {
        describe("StringUtils") {
            context("Is valid email") {
                it("Valid email") {
                    let email = "curso@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                it("Invalid email") {
                    let email = "curso@gmail"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalse())
                }
            }
            context("Remove white space") {
                it("White space removed") {
                    let text = "Olá Mundo!"
                    let newText = text.removeWhiteSpace()
                    expect(newText).to(equal("OláMundo!"))
                }
            }
            context("Replace a String") {
                it("String replaced") {
                    let text = "Iury"
                    let newText = text.replace(string: "I", replacement: "L")
                    expect(newText).to(contain("L"))
                }
            }
        }
    }
}
