//
//  Steps.swift
//  TopDownNavigation
//
//  Created by Mladen Mikić on 07.02.2023.
//

import Foundation


enum Steps: CaseIterable {
    case one, two, three, four
    func next() -> Steps {
        guard var index = Steps.allCases.firstIndex(of: self) else { return .one }
        index = index + 1
        guard Steps.allCases.indices.contains(index) else { return .one }
        return Steps.allCases[index]
    }
}
