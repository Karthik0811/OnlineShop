//
//  ProductModelValidatorProtocol.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 27/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//


protocol CartView: class {
    func displayVaidationError(with message: String)
    func display(finalPrice: String)
}

protocol CartPresenterInterface {
   func getFinalPrice(with name:String?, quantity:Int?, price:Double?, state:String?) -> Double
}
