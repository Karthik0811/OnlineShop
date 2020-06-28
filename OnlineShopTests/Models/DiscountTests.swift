//
//  DiscountTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class DiscountTests: XCTestCase {

    func testDiscount_WhenAmountPassed_ShouldInitialize(){
        //Arrange
        let sut = Discount(for : 1000)
        //Assert
        XCTAssertNotNil(sut, "Discount object shoud be initiaized")
    }

    //MARK: - Test cases to get discount rate
    
    func testDiscount_TotalAmountLessThanOrEqualTo1000_ShouldReturnDiscountAs0(){
        //Arrange
        let sut = Discount(for : 1000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 0, "Discount percentage should be 0%")
    }

    func testDiscount_TotalAmountAbove1000AndEqualTo5000_ShouldReturnDiscountAs3(){
        //Arrange
        let sut = Discount(for : 2000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 3, "Discount percentage should be 3%")
    }

    func testDiscount_TotalAmountAbove5000AndEqualTo7000_ShouldReturnDiscountAs5(){
        //Arrange
        let sut = Discount(for : 6000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 5, "Discount percentage should be 5%")
    }
    
    func testDiscount_TotalAmountAbove7000AndEqualTo10000_ShouldReturnDiscountAs7(){
        //Arrange
        let sut = Discount(for : 8000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 7, "Discount percentage should be 7%")
    }

    func testDiscount_TotalAmountAbove10000AndEqualTo50000_ShouldReturnDiscountAs10(){
        //Arrange
        let sut = Discount(for : 20000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 10, "Discount percentage should be 10%")
    }

    func testDiscount_TotalAmountAbove50000_ShouldReturnDiscountAs15(){
        //Arrange
        let sut = Discount(for : 60000)
        //Act
        let discountRate = sut.getDiscountRate()
        //Assert
        XCTAssertEqual(discountRate, 15, "Discount percentage should be 15%")
    }
    
    func testDiscount_DiscountedAmountForGivenCost_ShouldReturnDiscountedAmount(){
        //Arrange
        let sut = Discount(for : 60000)
        //Act
        let discountedAmount = sut.getDiscountedAmount()
        //Assert
        XCTAssertEqual(discountedAmount, 9000,"Discount amount should be 9000")
    }
}
