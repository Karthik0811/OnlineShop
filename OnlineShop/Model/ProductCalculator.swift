//
//  ProductCalculator.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 26/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import Foundation

class ProductCalculator {
    var returnValue = true
    
    func isProductNameEmpty(productName: String) -> Bool{
        
        if productName.isEmpty {
            returnValue = false
        }
        return returnValue
    }
    
    func isProductCountZero(count: Int) -> Bool{

        if count == 0 {
            returnValue = false
        }
        return returnValue

    }
    
    func isPriceEmpty(price: Int) -> Bool{
        if price == 0{
            returnValue = false
        }
        return returnValue
    }
    
    func isStateCodeEmpty(code: String) -> Bool{
        if code.isEmpty{
            returnValue = false
        }
        return returnValue
    }
}
