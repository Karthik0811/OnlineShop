//
//  CalculationLogic.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 26/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import Foundation

struct CalculationLogic{

    
    func calculatePrice(count: String, unitPrice: String) -> Double{
        let productPrice = (count as NSString).doubleValue * (unitPrice as NSString).doubleValue
        return productPrice
    }
    
    func discountPercent(price: Double) -> Double{
        
        var discount = 0.0
        
        switch price {
        case 1001...5000:
            discount = 0.03
        case 5001...7000:
            discount = 0.05
        case 7001...10000:
            discount = 0.07
        case 10001...50000:
            discount = 0.1
        case 50001...:
            discount = 0.15
        default:
            discount =  0.0
        }
        return discount
        
    }
    
    func taxPercent(code: String) -> Double {
        
        var taxPercent = 0.0
        
        switch code {
          case "UT":
              taxPercent = 0.0685
          case "NV":
              taxPercent = 0.08
          case "TX":
              taxPercent = 0.0625
          case "AL":
              taxPercent = 0.04
          default:
              taxPercent = 0.0825
          }
        return taxPercent
    }
    
    func cartPrice(price: Double, discountPercent: Double, taxPercent: Double) -> Double{

        let finalPrice = price - (price * discountPercent) + (price * taxPercent)
        return finalPrice
    }
}
