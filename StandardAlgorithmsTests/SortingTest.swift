//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Nunn, Frederick (IRG) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1, 3, 5, 8]
        //act
        let result = sorting.bubbleSort(data: [5, 3, 1, 8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6, 3, 1, 9, 2], expected: [1, 2, 3, 6, 9]), (data: [1, 100, 4, 3, 15], expected: [1, 3, 4, 15, 100]), (data: [], expected: [])]
        //act
        //assert
        for test in testData{
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [3, 5, 7, 8, 9]
        //act
        let result = sorting.mergeSort(data: [7, 9, 5, 8, 3])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSortWithVariousIntegerArraysReturnEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [8, 2, 5, 4, 9], expected: [2, 4, 5, 8, 9]), (data: [2, 76, 23, 4, 105], expected: [2, 4, 23, 76, 105])]
        //act
        //assert
        for test in testData{
            let result = sorting.mergeSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }

}
