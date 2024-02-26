//
//  DividerView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/24.
//

import SwiftUI

struct DividerView<Content>: View where Content: View {
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        GeometryReader { proxy in
            if proxy.size.width > proxy.size.height {
                HStack(spacing: 0) {
                    content()
                }
            } else {
                VStack(spacing: 0) {
                    content()
                }
            }
        }
    }
}
