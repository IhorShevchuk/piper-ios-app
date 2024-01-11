//
//  CShort.swift
//  pipertts
//
//  Created by Ihor Shevchuk on 27.12.2023.
//

import Foundation

extension CShort {
    func toFloat() -> Float {
        let result =  Float(self)/(Float(CShort.max) + 1)
        if result > 1 {
            return 1
        }
        if result < -1 {
            return -1
        }
        return result
    }
}
