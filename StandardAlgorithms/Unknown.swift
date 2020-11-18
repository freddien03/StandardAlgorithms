//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Nunn, Frederick (IRG) on 18/11/2020.
//

import Foundation

class Unknown {
    
    func sumFirstLast(data: [Int]) -> Int{
        if data.count == 0{
            return 0
        }
        return data[0] + data[data.count-1]
    }
}
