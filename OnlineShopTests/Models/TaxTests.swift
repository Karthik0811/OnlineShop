//
//  TaxTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class TaxTests: XCTestCase {

    func testTax_WhenValidStateAndAmountIsPassed_ShouldInitialize(){
        //Arrange
        let sut = Tax(for: "CA", taxableAmount: 3000)
        //Act
        //Assert
        XCTAssertNotNil(sut,"Tax object should be initialized")
    }

    //MARK: - Test cases to get discount percentage
    
    func testTax_taxPercentForUT_ShouldReturnRelatedTaxValue(){
        //Arrange
        let sut = Tax(for: "UT", taxableAmount: 3000)
        //Act
        let taxPercent = sut.getTaxPercentage()
        //Assert
        XCTAssertEqual(taxPercent, 6.85, "Tax for UT should be 6.85%")
        
    }
    
    func testTax_taxPercentForNV_ShouldReturnRelatedTaxValue(){
        //Arrange
        let sut = Tax(for: "NV", taxableAmount: 3000)
        //Act
        let taxPercent = sut.getTaxPercentage()
        //Assert
        XCTAssertEqual(taxPercent, 8.00, "Tax for NV should be 8.00%")
    }
    
    func testTax_taxPercentForTX_ShouldReturnRelatedTaxValue(){
        //Arrange
        let sut = Tax(for: "TX", taxableAmount: 3000)
        //Act
        let taxPercent = sut.getTaxPercentage()
        //Assert
        XCTAssertEqual(taxPercent, 6.25, "Tax for TX should be 6.25%")
    }
    
    func testTax_taxPercentForAL_ShouldReturnRelatedTaxValue(){
        //Arrange
        let sut = Tax(for: "AL", taxableAmount: 3000)
        //Act
        let taxPercent = sut.getTaxPercentage()
        //Assert
        XCTAssertEqual(taxPercent, 4.00, "Tax for AL should be 4.00%")
    }
    
    func testTax_taxPercentForCA_ShouldReturnRelatedTaxValue(){
        //Arrange
        let sut = Tax(for: "CA", taxableAmount: 3000)
        //Act
        let taxPercent = sut.getTaxPercentage()
        //Assert
        XCTAssertEqual(taxPercent, 8.25, "Tax for AL should be 8.25%")
    }

    //MARK: - Test case to fetch final tax amount
    
    func testTax_getTaxAmountForCA_WithGivenAmount_ShouldReturnCorrectTaxAmount(){
        //Arrange
        let sut = Tax(for: "CA", taxableAmount: 1000)
        //Act
        let taxAmount = sut.getTaxAmount()
        //Assert
        XCTAssertEqual(taxAmount, 82.5, "Tax calculation returns wrong value")


    }
}
