//
//  CoffeeView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct CoffeeCup: View {
    
    var body: some View {
        VStack {
            ZStack {
                Image("Espresso")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
    }
}

struct CoffeeView: View {
    
    @ObservedObject private var progress: PageProgress
    
    public init(progress: PageProgress) {
        self.progress = progress
    }
    
    var body: some View {
        let createCoffee = CoffeeDetails[progress.currPage].coffeeView
            if createCoffee == .espressoView {
                EspressoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .doppioView {
                DoppioView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .americanoView {
                AmericanoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .cappuccinoView {
                CappuccinoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .latteView {
                LatteView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .mochaView {
                MochaView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .cortadoView {
                CortadoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .flatWhiteView {
                FlatWhiteView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .macchiatoView {
                MacchiatoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .conPannaView {
                ConPannaView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .affogatoView {
                AffogatoView(progress: progress)
                    .transition(.opacity)
            } else if createCoffee == .irishCoffeeView {
                IrishCoffeeView(progress: progress)
                    .transition(.opacity)
            }
    }
}


