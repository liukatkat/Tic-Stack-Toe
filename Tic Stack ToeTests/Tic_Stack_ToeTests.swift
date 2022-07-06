//
//  Tic_Stack_ToeTests.swift
//  Tic Stack ToeTests
//
//  Created by Katrina Liu on 7/4/22.
//

import XCTest
@testable import Tic_Stack_Toe

class Tic_Stack_ToeTests: XCTestCase {
    
    func levelUpTest() {
        let b = Board()
        XCTAssertTrue(b.levelUp(newLevel: 1, index: 0))
        XCTAssertTrue(b.levelUp(newLevel: 2, index: 0))
        XCTAssertFalse(b.levelUp(newLevel: 1, index: 0))
    }
    
    func storeRectLocTest() {
        let b = Board()
        b.storeRectLoc(loc: CGPoint(x: 1, y: 0), index: 3)
        XCTAssertEqual(b.getRectLoc(index: 3).x, 1)
        XCTAssertEqual(b.getRectLoc(index: 3).y, 0)
    }
    
    
    
    
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
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
