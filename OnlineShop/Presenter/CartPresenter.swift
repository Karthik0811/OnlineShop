//
//  ProductPresenter.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 27/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import Foundation

final class CartPresenter: CartPresenterInterface{
    private weak var view: CartView?
    
    init(view: CartView)  {
        self.view = view
    }
    
    func getFinalPrice(with name: String?, quantity: Int?, price: Double?, state: String?) -> Double {
        
        guard let product = Product(name: name, quantity: quantity) else {
            view?.displayVaidationError(with: "Please fill all product/product count")
            return 0
        }
        
        guard let price = Price(value: price) else {
            view?.displayVaidationError(with: "Please fill all Price or invalid price")
            return 0
        }
        
        guard let state = State(name: state) else {
            view?.displayVaidationError(with: "Please fill all State")
            return 0
        }
        
        let finalPrice = getFinalCartValue(for: product, state: state, price: price)
        view?.display(finalPrice: String(finalPrice))
        return finalPrice
    }
    
    private func getFinalCartValue(for product: Product, state: State, price:Price) -> Double {
        
        let totalWithoutTax = calculateTotalWithoutTax(for: product, of: price)
        let totalDiscountedAmount = getTotalDiscountedAmount(for: totalWithoutTax)
        let taxAmount = getTaxAmount(for: state.getStateName(), taxableAmount: totalWithoutTax - totalDiscountedAmount)
        
        let finalCartPrice = totalWithoutTax - totalDiscountedAmount + taxAmount
        
        return finalCartPrice
    }
    
    private func calculateTotalWithoutTax(for product:Product, of price: Price) -> Double {
        return Double(product.getQuantity()) * (price.getPrice())
    }
    
    private func getTotalDiscountedAmount(for amount:Double) -> Double {
        
        let discount = Discount(for: amount)
        return discount.getDiscountedAmount()
    }
    private func getTaxAmount(for state:String, taxableAmount:Double) -> Double {
        
        let tax = Tax(for: state, taxableAmount: taxableAmount)
        return tax.getTaxAmount()
    }
}
