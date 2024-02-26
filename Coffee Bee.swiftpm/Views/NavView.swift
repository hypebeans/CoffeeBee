//
//  NavigationView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct NavView: View {
    @ObservedObject private var progress: PageProgress
    
    public init(progress: PageProgress) {
        self.progress = progress
    }
    
    
    @State private var success = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            header
            
            Text("Coffee Types")
                .font(.headline).fontWeight(.bold)
                .padding(.leading, 20)
                .padding(.bottom, 10)
            
            coffeePage
        }
        .padding(.trailing, 20)
        .background(Color(red: 0.55, green: 0.52, blue: 0.11))
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image("Coffee Bee Text Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 100, maxHeight: 40)
                .padding(.bottom, 5)
        }
        .padding(.top, 10)
        .padding(.leading, 20)
        .padding(.bottom, 40)
    }
    
    var coffeePage: some View {
        VStack(alignment: .leading) {
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(CoffeeDetails, id: \.self.id) { page in
                        Button {
                            let index = CoffeeDetails.firstIndex(of: page) ?? 0
                            withAnimation {
                                progress.currPage = index
//                                .animation(Animation.timingCurve(0.28, 1.43, 0.53, 0.69, duration: 1.5))
                            }
                        } label: {
                            HStack {
                                Image(page.titleImageName)
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.accentColor)
                                    .frame(width: 20, height: 20)
                                    .padding(5)
                                    .padding(.trailing, 4)
                                    .transition(.scale.combined(with: .slide))
                                
                                Text(page.title)
                                    .font(.callout)
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                            .padding(10)
                            .background(page.id == CoffeeDetails[progress.currPage].id ? Color(red: 0.94, green: 0.95, blue: 0.52).opacity(0.25) : Color.clear)
                            .cornerRadius(10)
                        }
                    }
                }
            }
        }
        .padding(.leading, 20)
    }
}



