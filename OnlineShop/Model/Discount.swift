//
//  Discount.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//


//protocol DiscountProtocol {
//   func getDiscountRate() -> Double
//   func getDiscountedAmount() -> Double
//}

final class Discount {
    private var amount: Double
    
    //MARK: - Init Method
    init(for amount:Double) {
        self.amount = amount
    }
    
    //MARK: - Discount related methods
    func getDiscountRate() -> Double{
        
    
        if 0 ... 1000 ~= amount {
            return 0
        }
        else if 1000.01 ... 5000 ~= amount {
            return 3
        }
        else if 5000.01 ... 7000 ~= amount {
            return 5
        }
        else if 7000.01 ... 10000 ~= amount {
            return 7
        }
        else if 10000.01 ... 50000 ~= amount {
            return 10
        }
        else {
            return 15
        }
        
    }
    
    func getDiscountedAmount() -> Double{
        return getDiscountRate() * amount / 100
    }
}
