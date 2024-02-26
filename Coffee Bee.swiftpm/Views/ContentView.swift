//
//  ContentView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var progress = PageProgress()
    
    var body: some View {
        TitleView(progress: progress)
    }
}
