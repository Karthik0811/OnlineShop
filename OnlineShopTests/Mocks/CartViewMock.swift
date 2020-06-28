//
//  CartViewMock.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class CartViewMock: CartView {
    
    var displayValidationErrorMessage: String?
    var displayFinalPrice: String?

    
    func displayVaidationError(with message: String) {
        displayValidationErrorMessage = message
    }
    
    func display(finalPrice: String) {
        displayFinalPrice = finalPrice
    }
    


}
