//
//  MainMenuView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/24.
//

import SwiftUI

struct MainMenuView: View {
    
    @StateObject var progress = PageProgress()
    
    var body: some View {
        DividerView {
            NavView(progress: progress)
                .frame(width: 300)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 2)
            CoffeeContentView(progress: progress)
        }
    }
}
