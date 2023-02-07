//
//  ViewModel.swift
//  TopDownNavigation
//
//  Created by Mladen Mikić on 07.02.2023.
//

import Foundation
import SwiftUI


class ViewModel: ObservableObject {
    
    @Published var steps: Steps = .one
    
    func next() {
        withAnimation {
            self.steps = self.steps.next()
        }
    }
}
