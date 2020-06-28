//
//  PriceTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class PriceTests: XCTestCase {

    //MARK: - Test cases for Price property
    
    func testPrice_WhenValueIsNil_ShouldNotInitialize(){
        
        //Arrange
        let sut = Price(value: nil)
        //Assert
        XCTAssertNil(sut,"Price should not initialize")
    }
    
    func testPrice_WhenValueIsNegative_ShouldNotInitialize(){
        
        //Arrange
        let sut = Price(value: -5)
        //Assert
        XCTAssertNil(sut,"Price should not initialize")
    }
    
    func testPrice_WhenValueIsZero_ShouldNotInitialize(){
     
        //Arrange
        let sut = Price(value: 0)
        //Assert
        XCTAssertNil(sut,"Price should not initialize")
    }
    
    func testPrice_ForValidPrice_ShouldReturnPriceValue(){
        //Arrange
        let sut = Price(value: 1000.0)
        //Act
        let productPrice = sut!.getPrice()
        //Assert
        XCTAssertNotNil(productPrice,"Please fill all Price or invalid price")
    }

}
