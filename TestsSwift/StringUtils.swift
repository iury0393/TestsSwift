//
//  StringUtils.swift
//  TestsSwift
//
//  Created by Iury Vasconcelos on 06/10/22.
//

import Foundation

extension String {
    
    func removeWhiteSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
}
