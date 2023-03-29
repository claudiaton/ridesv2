//
//  RidesTests.swift
//  RidesTests
//
//  Created by Claudia Ton on 2023-03-24.
//

import XCTest
@testable import Rides

final class InputValidationTests: XCTestCase {
    private var sut: InitialViewModel!
  
    override func setUpWithError() throws {
        sut = InitialViewModel()
    }

    override func tearDownWithError() throws {
        sut=nil
    }

    func test_input10_returnsTrue() {
        let actual = sut.sizeValidation(size: 10)
        let expected = true
        XCTAssertEqual(actual, expected)
    }
    
    func test_input0_returnsFalse() {
        let actual = sut.sizeValidation(size: 0)
        let expected = false
        XCTAssertEqual(actual, expected)
    }
    
    func test_input101_returnsFalse() {
        let actual = sut.sizeValidation(size: 101)
        let expected = false
        XCTAssertEqual(actual, expected)
    }

}

final class ComputeCarbonTests: XCTestCase {
    private var sut: DetailViewModel!
//    private var vehicle:Vehicle = Vehicle(vin: "4PJVMAABPYPP93821", makeAndModel:"Buick Encore", color:"Red", carType: "Coupe", kilometrage:63775)
  
    override func setUpWithError() throws {
        sut = DetailViewModel()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        sut=nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func test_input10_returnsTrue() {
        let actual = sut.computeCarbon(kilometrage: 4000)
        let expected = 4000
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_input0_returnsFalse() {
        let actual = sut.computeCarbon(kilometrage: 6000)
        let expected = 6500
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_input101_returnsFalse() {
        let actual = sut.computeCarbon(kilometrage: 10000)
        let expected = 12500
        
        XCTAssertEqual(actual, expected)
    }
    
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
