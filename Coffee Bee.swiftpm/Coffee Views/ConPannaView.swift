//
//  ConPannaView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/25.
//

import SwiftUI

struct ConPannaView: View {
    
    @ObservedObject var progress: PageProgress
    
    @State var conPannaDrink: Coffee = Coffee(
        water: LiquidAmount(0),
        milk: LiquidAmount(0),
        milkFoam: LiquidAmount(0.3),
        espressoShot: LiquidAmount(0.3),
        chocolate: LiquidAmount(0),
        cream: LiquidAmount(0.7),
        iceCream: LiquidAmount(0),
        alcohol: LiquidAmount(0)
    )
    
    var body: some View {
        VStack {
            CoffeeComponentsView(coffee: $conPannaDrink)
        }.animation(.timingCurve(0.44, 1.86, 0.61, 0.99, duration: 0.5))
        
    }
}
