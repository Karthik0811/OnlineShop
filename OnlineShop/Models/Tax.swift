//
//  Tax.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//


final class Tax {
    
    private var state: String
    private var taxableAmount: Double
    
    //MARK: - Init Method
    
    init(for state: String, taxableAmount: Double){
        self.state = state
        self.taxableAmount = taxableAmount
    }
    
    //MARK: - Tax related methods
    
    func getTaxPercentage() -> Double{
        
        switch state {
        case "UT" : return 6.85
        case "NV" : return 8.00
        case "TX" : return 6.25
        case "AL" : return 4.00
        case "CA" : return 8.25
        default:    return 0.00
        }
    }
    
    func getTaxAmount() -> Double{
        return taxableAmount * getTaxPercentage()/100
    }
}
