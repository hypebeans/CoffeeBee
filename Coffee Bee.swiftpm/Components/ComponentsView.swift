//
//  ComponentsView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct ProgressBar: View {
    
    var colors: [Color]
    var progress: Float
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .leading) {
                LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                    .frame(height: 16)
                    .mask(
                        RoundedRectangle(cornerRadius: 8)
                            .animation(.easeInOut)
                    )
                    .opacity(0.3)
                
                LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                    .frame(height: 16)
                    .frame(width: proxy.size.width * CGFloat(progress))
                    .mask(
                        RoundedRectangle(cornerRadius: 8)
                            .animation(.easeInOut)
                    )
            }
        }
        .frame(height: 16)
    }
}

struct ComponentsView: View {
    
    var desc: String
    var systemImage: String //次回は自分のアイコンを変更
    var colors: [Color]
    var progress: Float
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: systemImage)
                    .frame(width: 24)
                    .foregroundColor(Color(red: 0.55, green: 0.52, blue: 0.11))
                Text(desc)
                    .font(.caption.bold())
                    .foregroundColor(Color(red: 0.55, green: 0.52, blue: 0.11))
                    .frame(width: 72)
                    .multilineTextAlignment(.center)
                if progress > 0 {
                    ProgressBar(colors: colors, progress: progress)
                } else {
                    ProgressBar(colors: [Color.gray, Color.clear], progress: progress)
                }
            }
        }
    }
}

