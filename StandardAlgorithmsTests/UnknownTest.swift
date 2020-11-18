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

}
