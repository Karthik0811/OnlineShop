//
//  Price.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//


final class Price {
    private var value: Double?
    
    //MARK: - Init Method
    init?(value:Double?) {
        
        guard let priceValue = value, !priceValue.isLessThanOrEqualTo(0) else {
            return nil
        }
        
        self.value = priceValue
    }
    
    //MARK: - Price related method
    
    func getPrice() -> Double{
        return value!
    }
}
