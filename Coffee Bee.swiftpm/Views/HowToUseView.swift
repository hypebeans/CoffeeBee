//
//  HowToUseView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

struct HowToUseView: View {
    
    var body: some View {
        ZStack {
            Color(red: 0.55, green: 0.52, blue: 0.11).edgesIgnoringSafeArea(.all)
            VStack {
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                        Image("Coffee Bee Text Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 250)
                            .padding()
                        Spacer()
                    }
                }
                
                VStack(spacing: 5) {
                    Text("How To Use 🤔")
                        .font(.title2).fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("Welcome to Coffee Bee! So congratulations! You've been greeted with a logo screen, or perhaps featuring a bee logo related to coffee!")
                        .font(.footnote).fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 250)
                        .padding(.top)
                        .padding(.bottom, 30)
                    
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20) {
                            LeftView(
                                name: "Tap Start",
                                desc: "Click **START** button to begin your coffee learning! You'll be redirected to the main menu screen. At the top left, there's a back button to go back to the logo screen."
                            )
                            
                            RightView(
                                name: "Information",
                                desc: "You'll see various types of coffee you can learn about. Click one of the list of coffee types, accompanied with a brief component description to see what are the ingredients required to brew your selected coffee type."
                            )
                            
                            LeftView(
                                name: "Bee with Coffee",
                                desc: "As you finish exploring one of the coffee types, you'll notice the left side bar or navigation buttons at the bottom of the screen labeled Previous and Next. Click the Next button or one of the coffee types on the left side bar to continue your coffee journey!"
                            )
                            
                            RightView(
                                name: "Coffee Master",
                                desc: "Repeat the process of learning, and interacting, and exploring with the content to improvise your understanding of coffee! Whether you're a coffee expert or a curious beginner, there's always something new to learn and explore in the world of coffee!"
                            )
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                    }
                    
                    Spacer()
                }
                .padding(30)
            }
        }
        
        
    }
    
    struct LeftView: View {
        var name: String
        var desc: String
        
        var body: some View {
            HStack {
                Image("\(name)")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250, maxHeight: 250)
                    .padding(10)
                    .padding(.trailing, 20)
                Text(try! AttributedString(markdown: desc))
                    .font(.caption)
                    .frame(maxWidth: 200)
            }.padding()
        }
    }
    
    struct RightView: View {
        var name: String
        var desc: String
        
        var body: some View {
            HStack {
                Text(try! AttributedString(markdown: desc))
                    .font(.caption)
                    .frame(maxWidth: 200)
                Image("\(name)")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 250, maxHeight: 250)
                    .padding(10)
                    .padding(.trailing, 20)
            }.padding()
        }
    }
}
