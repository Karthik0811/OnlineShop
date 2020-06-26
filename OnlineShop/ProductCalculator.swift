//
//  ProductCalculator.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 26/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import Foundation

struct ProductCalculator {
    
    func isProductNameEmpty(productName: String) -> Bool {
        var returnValue = true
        
        if productName.isEmpty {
            returnValue = false
        }
        return returnValue
    }
    
    func isProductCountZero(count: Int) -> Bool {
        var returnValue = true

        if count == 0 {
            returnValue = false
        }
        return returnValue

    }
}
