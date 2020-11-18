//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Nunn, Frederick (IRG) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {

    func testReturnsSumOfFirstAndLastFromIntegerArray() {
        //arrange
        let unknown = Unknown()
        let expected = 14
        //act
        let result = unknown.sumFirstLast(data: [4, 6, 1, 7, 9, 10])
        
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testReturnsSumOfFirstAndLastFromVariousIntegerArrays() {
        //arrange
        let unknown = Unknown()
        let testData = [(data: [3, 7, 4, 2, 6, 2], expected: 5), (data: [5, 4, 2, 6, 21], expected: 26), (data: [2], expected: 4), (data: [], expected: 0)]
        //act
        //assert
        for test in testData{
            let result = unknown.sumFirstLast(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testReturnsSecondSmallestInVariousIntegerArrays() {
        //arrange
        //act
        //assert
    }

}
