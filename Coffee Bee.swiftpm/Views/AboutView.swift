//
//  AboutView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct AboutView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack {
            Color(red: 0.55, green: 0.52, blue: 0.11).opacity(0.5).edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Image("Bee")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .padding()
                    Spacer()
                }
                
                VStack(spacing: 0) {
                    Image("Coffee Bee Text Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                .padding(.top)
                .padding(.bottom, 30)
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        LittleView(
                            name: "swift",
                            desc: "This coffee learning application was created as a Swift Student Challenge 2024 submission by [Jonathan Budiman](https://github.com/hypebeans) in February 2024."
                        )
                        
                        LittleView(
                            name: "book.closed.fill",
                            desc: "Most of the coffee information are referenced from: [Yuzu Bakes](https://www.yuzubakes.com/food-blog/different-types-of-coffee), and [Specialty Coffee Association](https://sca.coffee/research/coffee-standards)"
                        )
                        
                        LittleView(
                            name: "cup.and.saucer.fill",
                            desc: "The goal of Coffee Bee is to enrich users knowledge and enjoyment of coffee, empowering them to become smarter, discerning, and engaged coffee enthusiasts!"
                        )
                    }
                    .padding(.leading, 35)
                    .padding(.trailing, 35)
                }
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("CLOSE")
                        .padding(12)
                        .padding(.leading, 6)
                        .padding(.trailing, 6)
                        .background(Color(red: 0.55, green: 0.52, blue: 0.11).opacity(0.1))
                        .cornerRadius(10)
                }
                .padding()
            }.padding(30)
        }
    }
    
}

struct LittleView: View {
    var name: String
    var desc: String
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: name)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                .frame(width: 30, height: 30)
                .padding(10)
                .background(
                    Color(red: 0.55, green: 0.52, blue: 0.11).opacity(0.1)
                        .cornerRadius(10)
                )
                .padding(.trailing, 20)
            Text(try! AttributedString(markdown: desc))
                .font(.footnote)
        }
    }
}

extension String {
    func toMarkdown() -> AttributedString {
        do {
            return try AttributedString(markdown: self)
        } catch {
            print("Error parsing Markdown for string \(self): \(error)")
            return AttributedString(self)
        }
    }
}
