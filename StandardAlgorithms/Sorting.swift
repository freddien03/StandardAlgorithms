//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Nunn, Frederick (IRG) on 13/11/2020.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int]{
        if data.count <= 1{
            return data
        }
        var sorted = data
        var count = 1
        var passes = 0
        while count != 0 || passes >= sorted.count{
            passes += 1
            count = 0
            for i in 0..<sorted.count-1{
                if sorted[i] > sorted[i+1]{
                    let temp = sorted[i]
                    sorted[i] = sorted[i+1]
                    sorted[i+1] = temp
                    count += 1
                }
            }
        }
        return sorted
    }
    
    func mergeSort(data: [Int]) -> [Int]{
        if data.count <= 1{
            return data
        }
        let midpoint = data.count/2
        let left = data[..<midpoint]
        let right = data[midpoint...]
        return mergeSort(data: left) + mergeSort(data: right)
        
    }
}
