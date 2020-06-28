//
//  ProductCalculator.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 26/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import Foundation

class Product {
    
    private var name:String?
    private var quantity:Int?
    
    init?(name:String?, quantity: Int?) {
        
        guard let productName = name, !productName.isEmpty else{
            return nil
        }
        guard let productQuantity = quantity, productQuantity != 0 else{
            return nil
        }
        self.name = productName
        self.quantity = productQuantity
    }
    
    func getProductName() -> String {
        return name!
    }
    
    func getQuantity() -> Int {
        return quantity!
    }
    


}
