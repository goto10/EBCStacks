//
//  StacksTest.swift
//  StackTests
//
//  Created by Myke on 4/23/21.
//

import XCTest
@testable import Stack

class StacksTest: XCTestCase {

    var lifoStack: LIFO<Int>!
    var fifoStack: FIFO<Int>!
    
    override func setUpWithError() throws {
        lifoStack = LIFO<Int>()
        fifoStack = FIFO<Int>()
    }

    override func tearDownWithError() throws {

    }

    func testExample() throws {
        
        lifoStack.push(5)
        lifoStack.push(6)
        lifoStack.push(7)
        lifoStack.push(8)
        lifoStack.push(9)
        
        XCTAssertEqual(lifoStack.count, 5)
        
        XCTAssertEqual(lifoStack.pop(), 9)
        XCTAssertEqual(lifoStack.pop(), 8)
        
        XCTAssertEqual(lifoStack.count, 3)
        
        XCTAssertEqual(lifoStack.peek(), 7)
        XCTAssertEqual(lifoStack.pop(), 7)
        

        fifoStack.push(5)
        fifoStack.push(6)
        fifoStack.push(7)
        fifoStack.push(8)
        fifoStack.push(9)
        
        XCTAssertEqual(fifoStack.count, 5)
        
        XCTAssertEqual(fifoStack.pop(), 5)
        XCTAssertEqual(fifoStack.pop(), 6)
        
        XCTAssertEqual(fifoStack.count, 3)
        
        XCTAssertEqual(fifoStack.peek(), 7)
        XCTAssertEqual(fifoStack.pop(), 7)

}

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
