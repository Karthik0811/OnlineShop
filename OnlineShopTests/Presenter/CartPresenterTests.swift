//
//  CartPresenterTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class CartPresenterTests: XCTestCase {
    
    let mockView = CartViewMock()
    var sut: CartPresenter!
    
    override func setUpWithError() throws {
        super.setUp()
        sut = CartPresenter(view: mockView)

    }

    override func tearDownWithError() throws {
        super.tearDown()
        sut = nil
    }

    //MARK: - Test cases
    
    func testCartPresenter_WhenNameAndQuantityIsNil_ShouldThrowError(){
        //Act
        let expectedErrorTitle = "Please fill all product/product count"
        sut.getFinalPrice(with: nil, quantity: nil, price: 3000, state: "CA")
        //Assert
        XCTAssertEqual(expectedErrorTitle, mockView.displayValidationErrorMessage, "Error title match")

    }
    
    func testCartPresenter_WhenPriceIsInvalid_ShouldThrowError(){
        //Act
        let expectedErrorTitle = "Please fill all Price or invalid price"
        sut.getFinalPrice(with: "Laptop", quantity: 1, price: 0, state: "CA")
        //Assert
        XCTAssertEqual(expectedErrorTitle, mockView.displayValidationErrorMessage, "Error title match")
    }
 
    func testCartPresenter_WhenStateCodeIsInvalid_ShouldThrowError(){
        //Arrange
        let expectedErrorTitle = "Please fill all State"
        //Act
        sut.getFinalPrice(with: "Laptop", quantity: 1, price: 20000, state: "KR")
        //Assert
        XCTAssertEqual(expectedErrorTitle, mockView.displayValidationErrorMessage, "Error title match")
    }
    
    func testCartPresenter_GivenAllValidInputs_ShouldReturnCorrectFinalPrice(){
        //Arrange
        let expectedFinalPrice = 9937.05
        //Act
        let finalPrice = sut.getFinalPrice(with: "Mobile", quantity: 1, price: 10000.00, state: "UT")
        //Assert
        XCTAssertEqual(expectedFinalPrice, finalPrice, "Final price matched")

        
    }

}
