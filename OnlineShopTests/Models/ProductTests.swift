//
//  OnlineShopTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 25/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class ProductTests: XCTestCase {
    
    //MARK: - Test cases for Product Name property
    
    func testProduct_WhenProductNameIsNil_ShouldNotInitialize(){
        //Arrange
        let sut = Product(name:nil, quantity: 1)
        //Assert
        XCTAssertNil(sut,"Product name should not initialize")
    }
    
    func testProduct_WhenProductNameIsEmpty_ShouldNotInitialize(){
        //Arrange
        let sut = Product(name:"", quantity: 1)
        //Assert
        XCTAssertNil(sut,"Product name should not initialize")
    }
    
    func testProduct_ForValidProductName_ShouldReturnProductName(){
        //Arrange
        let sut = Product(name:"Apple", quantity: 1)
        //Act
        let productName = sut!.getProductName()
        //Assert
        XCTAssertNotNil(productName,"Please fill all product")
    }
    
    //MARK: - Test cases Quantity property

    func testProduct_WhenQuantityIsNil_ShouldNotInitialize(){
        //Arrange
        let sut = Product(name:"Apple", quantity: nil)
        //Assert
        XCTAssertNil(sut,"Qunatity should not initialize")
    }
    
    func testProduct_InvalidQuantity_ShouldNotInitialize(){
        //Arrange
        let sut = Product(name:"Apple", quantity: 0)
        //Assert
        XCTAssertNil(sut,"Quantity should not initialize")
    }
    
    func testProduct_ForValidQuantity_ShouldReturnQuantity(){
        //Arrange
        let sut = Product(name:"Apple", quantity: 1)
        //Act
        let quantity = sut!.getQuantity()
        //Assert
        XCTAssertNotNil(quantity,"Please fill all product count")
    }
}
