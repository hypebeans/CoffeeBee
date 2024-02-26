//
//  MacchiatoView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/25.
//

import SwiftUI

struct MacchiatoView: View {
    
    @ObservedObject var progress: PageProgress
    
    @State var macchiatoDrink: Coffee = Coffee(
        water: LiquidAmount(0),
        milk: LiquidAmount(0),
        milkFoam: LiquidAmount(0.2),
        espressoShot: LiquidAmount(0.3),
        chocolate: LiquidAmount(0),
        cream: LiquidAmount(0),
        iceCream: LiquidAmount(0),
        alcohol: LiquidAmount(0)
    )
    
    var body: some View {
        VStack {
            CoffeeComponentsView(coffee: $macchiatoDrink)
        }.animation(.timingCurve(0.44, 1.86, 0.61, 0.99, duration: 0.5))
        
    }
}
