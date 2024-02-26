//
//  CoffeeContentView.swift
//
//
//  Created by Jonathan Budiman on 2024/02/24.
//

import SwiftUI

struct CoffeeContentView : View {
    
    @ObservedObject private var progress: PageProgress
    //    @State var coffee: Coffee = Coffee()
    
    var currPage : Page {
        CoffeeDetails[progress.currPage]
    }
    
    public init(progress: PageProgress) {
        self.progress = progress
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.55, green: 0.52, blue: 0.11).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Header
                Rectangle()
                    .cornerRadius(6)
                    .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .frame(height: 2)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                
                Content
            }
            .padding()
        }
        
    }
    
    let spacingValue : CGFloat = 5
    let topBottomSpacingValue : CGFloat = 20
    
    var Content : some View {
        ScrollView(showsIndicators: false) {
            ScrollViewReader { value in
                VStack(alignment: .leading, spacing: spacingValue) {
                    ForEach(currPage.components, id: \.self.id) { element in
                        if let pageHeadline = element as? PageHeadline {
                            Text(pageHeadline.text)
                                .font(.body.bold())
                                .lineSpacing(3.5)
                                .padding(.top, pageHeadline.topSpacing ? topBottomSpacingValue : 0)
                                .padding(.bottom, pageHeadline.bottomSpacing ? topBottomSpacingValue : 0)
                        }
                        
                        if let pageText = element as? PageText {
                            Text(pageText.text)
                                .lineSpacing(3.5)
                                .font(.callout)
                                .padding(.top, pageText.topSpacing ? topBottomSpacingValue : 0)
                                .padding(.bottom, pageText.bottomSpacing ? topBottomSpacingValue : 0)
                        }
                        
                        if let pageImage = element as? PageImage {
                            Image(pageImage.imageName)
                                .resizable()
                                .scaledToFit()
                                .padding(.top, pageImage.topSpacing ? topBottomSpacingValue : 0)
                                .padding(.bottom, pageImage.bottomSpacing ? topBottomSpacingValue : 0)
                        }
                        
                        if let pageDivider = element as? PageDivider {
                            Divider
                                .padding(.top, pageDivider.topSpacing ? topBottomSpacingValue : 0)
                                .padding(.bottom, pageDivider.bottomSpacing ? topBottomSpacingValue : 0)
                        }
                        
                        if let pageFact = element as? PageFact {
                            HStack {
                                Rectangle()
                                    .foregroundColor(.accentColor)
                                    .frame(width: 10)
                                    .cornerRadius(10)
                                    .padding(1)
                                VStack(alignment: .leading) {
                                    Text("FUN FACT 💡")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                    Text(pageFact.text)
                                        .font(.callout)
                                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                                        .padding(.top, 3)
                                    
                                }
                                .padding(5)
                                Spacer()
                            }
                            .padding(10)
                            .foregroundColor(Color(red: 0.55, green: 0.52, blue: 0.11))
                            .cornerRadius(10)
                            .padding(.top, pageFact.topSpacing ? topBottomSpacingValue : 0)
                            .padding(.bottom, pageFact.bottomSpacing ? topBottomSpacingValue : 0)
                            
                        }
                    }
                    
                    .padding(.top, spacingValue)
                    .padding(.bottom, spacingValue)

                    if progress.currPage + 1 < CoffeeDetails.count {
                        Divider
                        NavButtons
                            .padding(.bottom, spacingValue)
                    }
                }
                
            }
            .transition(.slide)
        }
    }
    
    var NavButtons : some View {
        VStack {
            if progress.currPage + 1 < CoffeeDetails.count {
                Button {
                    progress.currPage += 1
                } label: {
                    Spacer()
                    Text("NEXT")
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                        .padding(5)
                    Spacer()
                }
                .padding(10)
                .background(Color(red: 0.92, green: 0.95, blue: 0.02))
                .cornerRadius(10)
                .padding(.bottom, progress.currPage - 1 < 0 ? 10 : 0 )
                .keyboardShortcut(.downArrow, modifiers: [])
            }
            
            if progress.currPage - 1 >= 0 {
                Button {
                    progress.currPage -= 1
                } label: {
                    Spacer()
                    Text("PREVIOUS")
                        .font(.callout)
                        .foregroundColor(Color(red: 0.95, green: 0.89, blue: 0.02))
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(13)
                .keyboardShortcut(.upArrow, modifiers: [])
            }
        }
        .padding(.top, 15)
    }
    
    var Divider: some View {
        Rectangle()
            .cornerRadius(6)
            .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
            .frame(height: 2)
    }
    
    var Header: some View {
        VStack(spacing: 0) {
            HStack {
                Image(currPage.titleImageName)
                    .resizable()
                    .scaledToFit()
                    .padding()
                CoffeeView(progress: progress)
            }
            
            VStack(spacing: 6) {
                Text(currPage.contentSubTitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.top, 10)
                Text(currPage.contentTitle)
                    .font(.title2).fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .padding(.top)
        }
    }
}


