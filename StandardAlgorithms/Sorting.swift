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
        var left = mergeSort(data: Array(data[..<midpoint]))
        var right = mergeSort(data: Array(data[midpoint...]))
        print(left)
        print(right)
        var new = [Int]()
        while left.count > 0 && right.count > 0{
            print(new)
            if left[0] < right[0] {
                new.append(left[0])
                left.remove(at: 0)
            }else{
                new.append(right[0])
                right.remove(at: 0)
            }
        }
        if left.count <= 0{
            new.append(contentsOf: right)
        }else{
            new.append(contentsOf: left)
        }
        print(new)
        return new
        
    }
    
}
