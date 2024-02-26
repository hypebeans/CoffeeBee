//
//  TitleView.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/21.
//

import SwiftUI

struct TitleView: View {
    
    public init(progress: PageProgress) {
        self.progress = progress
    }
    
    @ObservedObject private var progress: PageProgress
    @State private var font: Font?
    @State private var isPresented = false
    @State private var isGuided = false
    @State private var showStartButton = false
    @State private var showHowToPlayButton = false
    @State private var goToMainMenu = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    isPresented = true
                } label: {
                    HStack {
                        Image(systemName: "info.circle")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                            .padding(10)
                            .transition(.scale.combined(with: .opacity))
                        Spacer()
                    }
                    .background((Color(red: 0.55, green: 0.52, blue: 0.11)))
                }
            }
            .animation(Animation.timingCurve(0.22, 1.42, 0.56, 0.88, duration: 0.5), value: progress.currPage)
            .sheet(isPresented: $isPresented) {
                AboutView()
            }
            
            ZStack {
                Color(red: 0.55, green: 0.52, blue: 0.11).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("Bee")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 400, maxHeight: 400)
                        .padding()
                        .transition(.opacity.animation(.easeInOut(duration: 1)))
                    Spacer()
                    Image("Coffee Bee Text Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300, maxHeight: 175)
                        .padding(.top, -50)
                        .transition(.opacity.animation(.easeInOut(duration: 1)))
                        .onAppear {
                            withAnimation(.easeOut(duration: 1).delay(1)) {
                                showStartButton = true
                                showHowToPlayButton = true
                            }
                        }
                    Spacer()
                    Text("Learn coffee.")
                    //                .font(.system(size: 32, weight: .black, design: font))
                        .font(.title3).fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    Text("Improve your knowledge")
                        .font(.title3).fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        goToMainMenu = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: .infinity, height: 60, alignment: .center)
                            .overlay(
                                Text("START")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.55, green: 0.52, blue: 0.11))
                            )
                            .opacity(showStartButton ? 1 : 0)
                            .padding()
                    }
                    NavigationLink("", destination: MainMenuView(progress: progress), isActive: $goToMainMenu)
                    Button {
                        isGuided = true
                    } label: {
                        Text("How to use? 🤔")
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .padding()
                    }.offset(y: -25)
                        .opacity(showHowToPlayButton ? 1 : 0)
                        .animation(Animation.timingCurve(0.22, 1.42, 0.56, 0.88, duration: 0.5), value: progress.currPage)
                    NavigationLink("", destination: HowToUseView(), isActive: $isGuided)
                    Spacer()
                    
                }
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(Color(red: 0.95, green: 0.95, blue: 0.95))
        //        .task {
        //            getPoppinsRegular()
        //        }
    }
    
    //    func getPoppinsRegular() {
    //        let cfURL = Bundle.main.url(forResource: "Poppins-Regular", withExtension: "ttf")! as CFURL
    //
    //        CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)
    //
    //        let uiFont = UIFont(name: "Poppins-Regular", size: 24)
    //
    //        font = Font(uiFont ?? UIFont())
    //    }
    
    //    private var changeProgress: some View {
    //        VStack {
    //            if.progress.PageProgress == .initial {
    //
    //            } else {
    //                if progress.chapter == 0 {
    //
    //                } else if progress.chapter == 1 {
    //
    //                }
    //            }
    //        }
    //    }
    
}
