//
//  ContentView.swift
//  TopDownNavigation
//
//  Created by Mladen Mikić on 07.02.2023.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel: ViewModel = .init()
    
    var body: some View {
        ZStack {
            
            switch viewModel.steps {
            case .one: Step1View().transition(.move(edge: .bottom))
            case .two: Step2View().transition(.move(edge: .top))
            case .three: Step3View().transition(.move(edge: .bottom))
            case .four: Step4View().transition(.move(edge: .top))
            }
            
            VStack {
                
                Spacer()
                
                Button {
                    self.viewModel.next()
                } label: {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .frame(width: 80, height: 40)
                }
                .background(Color.white)
            }

        }

    }
}
