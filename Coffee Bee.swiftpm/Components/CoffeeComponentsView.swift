//
//  CoffeeComponentsView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct CoffeeComponentsView: View {
    
    @Binding var coffee: Coffee
    
    var body: some View {
        VStack {
            VStack {
                ComponentsView(desc: "Water", systemImage: "drop.fill", colors: [Color.white, Color.blue], progress: coffee.water.percentage)
                ComponentsView(desc: "Milk", systemImage: "humidifier.and.droplets.fill", colors: [Color.gray, Color.white], progress: coffee.milk.percentage)
                ComponentsView(desc: "Milk Foam", systemImage: "pencil.and.outline", colors: [Color.white, Color.gray], progress: coffee.milkFoam.percentage)
                ComponentsView(desc: "Espresso Shot", systemImage: "cup.and.saucer.fill", colors: [Color.black, Color.brown], progress: coffee.espressoShot.percentage)
                ComponentsView(desc: "Chocolate", systemImage: "circle.grid.cross.fill", colors: [Color.gray, Color.brown], progress: coffee.chocolate.percentage)
                ComponentsView(desc: "Cream", systemImage: "scribble.variable", colors: [Color.gray, Color(.gray).opacity(0.2)], progress: coffee.cream.percentage)
                ComponentsView(desc: "Ice Cream", systemImage: "snowflake", colors: [Color.pink, Color.white], progress: coffee.iceCream.percentage)
                ComponentsView(desc: "Alcohol", systemImage: "circle.and.line.horizontal.fill", colors: [Color.brown, Color.orange], progress: coffee.alcohol.percentage)
            }
            .padding()
        }
        .background(
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(red: 0.95, green: 0.89, blue: 0.02))
        )
    }
}
