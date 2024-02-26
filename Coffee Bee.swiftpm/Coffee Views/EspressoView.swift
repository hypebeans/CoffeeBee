//
//  EspressoView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/24.
//

import SwiftUI

struct EspressoView: View {
    
    @ObservedObject var progress: PageProgress

    @State var espressoDrink: Coffee = Coffee(
        water: LiquidAmount(0),
        milk: LiquidAmount(0),
        milkFoam: LiquidAmount(0),
        espressoShot: LiquidAmount(0.3),
        chocolate: LiquidAmount(0),
        cream: LiquidAmount(0),
        iceCream: LiquidAmount(0),
        alcohol: LiquidAmount(0)
    )
    
    var body: some View {
        VStack {
                CoffeeComponentsView(coffee: $espressoDrink)
        }
        
        
    }
}
