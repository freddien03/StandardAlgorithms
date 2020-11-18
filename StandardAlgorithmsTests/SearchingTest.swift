//
//  SearchingTest.swift
//  StandardAlgorithms
//
//  Created by Nunn, Frederick (IRG) on 17/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {

    func testLinearSearchWithUnsortedListsReturnsTheCorrectResult() {
        //arrange
        let search = Search()
        let testData = [(data: [3, 7, 5, 9, 1], searchFor: 9, expected: true), (data: [2, 65, 34, 76, 132], searchFor: 41, expected: false), (data: [], searchFor: 5, expected: false)]
        //act
        //assert
        for test in testData{
            let result = search.linearSearch(data: test.data, searchFor: test.searchFor)
            XCTAssertEqual(result, test.expected)
        }
    }
}
