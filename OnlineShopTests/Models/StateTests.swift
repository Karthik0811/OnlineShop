//
//  StateTests.swift
//  OnlineShopTests
//
//  Created by Karthik Ravikumar on 28/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import XCTest
@testable import OnlineShop

class StateTests: XCTestCase {

//MARK: - Test cases for State Name property
    func testState_WhenStateNameIsNil_ShouldNotInitiliaze(){
        //Arrange
        let sut = State(name:nil)
        //Assert
        XCTAssertNil(sut,"State name should not initialize")
    }
    
    func testState_WhenStateNameIsEmpty_ShouldNotInitialize(){
        //Arrange
        let sut = State(name:"")
        //Assert
        XCTAssertNil(sut,"State name should not initialize")

    }
    
    func testState_WhenStateNameIsInvalid_ShouldNotInitialize(){
        //Arrange
        let sut = State(name:"KR")
        //Assert
        XCTAssertNil(sut,"State name should not initialize")
    }
    
    func testState_WhenStateNameIsValid_ShouldReturnStateName(){
        //Arrange
        let sut = State(name:"AL")
        //Act
        let validState = sut!.getStateName()
        //Assert
        XCTAssertNotNil(validState,"Please fill all State")
    }

}
