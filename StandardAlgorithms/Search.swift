//
//  Search.swift
//  StandardAlgorithms
//
//  Created by Nunn, Frederick (IRG) on 17/11/2020.
//

import Foundation

class Search {
    
    func linearSearch(data: [Int], searchFor: Int) -> Bool{
        for i in 0..<data.count{
            if data[i] == searchFor{
                return true
            }
        }
        return false
    }
}
