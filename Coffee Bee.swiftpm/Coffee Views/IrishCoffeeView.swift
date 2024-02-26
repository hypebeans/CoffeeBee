//
//  IrishCoffeeView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/25.
//

import SwiftUI

struct IrishCoffeeView: View {
    
    @ObservedObject var progress: PageProgress
    
    @State var irishCoffeeDrink: Coffee = Coffee(
        water: LiquidAmount(0),
        milk: LiquidAmount(0),
        milkFoam: LiquidAmount(0),
        espressoShot: LiquidAmount(0.3),
        chocolate: LiquidAmount(0),
        cream: LiquidAmount(0.5),
        iceCream: LiquidAmount(0),
        alcohol: LiquidAmount(0.2)
    )
    
    var body: some View {
        VStack {
            CoffeeComponentsView(coffee: $irishCoffeeDrink)
        }.animation(Animation.timingCurve(0.44, 1.86, 0.61, 0.99, duration: 0.5))
        
    }
}
