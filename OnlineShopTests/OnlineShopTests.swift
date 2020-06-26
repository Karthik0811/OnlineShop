//
//  OnlineShopTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 25/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class OnlineShopTests: XCTestCase {

    var sut: ProductCalculator!
    
    override func setUpWithError() throws {
        super.setUp()
        //Arrange
        sut = ProductCalculator()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        sut = nil
    }

    func testProductCalculator_WhenProductNameIsEmpty_ShouldReturnError(){
        //Act
        let isProductNameEmpty = sut.isProductNameEmpty(productName: "Laptop")
        //Assert
        XCTAssertTrue(isProductNameEmpty, "Please fill all product")
    }
    
    func testProductCalculator_WhenProductCountIsZero_ShouldReturnError(){
        //Act
        let isProductCountZero = sut.isProductCountZero(count: 1)
        //Assert
        XCTAssertTrue(isProductCountZero, "Please fill product count")

    }


}
