//
//  Page.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

public struct Page: Equatable {
    
    var id: String
    
    let title: String
    
    let contentSubTitle: String
    
    let contentTitle: String
    
    let titleImageName: String
        
    let coffeeView: CoffeeViews

    let components: [PageComponent]
    
    public static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.id == rhs.id
    }
}

class PageComponent {
    
    var id: UUID
    var topSpacing: Bool
    var bottomSpacing: Bool
    
    init(_ topSpacing: Bool, _ bottomSpacing: Bool) {
        id = UUID()
        self.topSpacing = topSpacing
        self.bottomSpacing = bottomSpacing
    }

}

class PageText : PageComponent {
    var text: String
    init(_ text: String, topSpacing: Bool = false, bottomSpacing: Bool = false) {
        self.text = text
        super.init(topSpacing, bottomSpacing)
    }
}

class PageHeadline : PageComponent {
    var text: String
    init(_ text: String, topSpacing: Bool = false, bottomSpacing: Bool = false) {
        self.text = text
        super.init(topSpacing, bottomSpacing)
    }
}

class PageImage : PageComponent {
    var imageName: String
    init(imageName: String, topSpacing: Bool = false, bottomSpacing: Bool = false) {
        self.imageName = imageName
        super.init(topSpacing, bottomSpacing)
    }
}

class PageDivider : PageComponent {
    init(topSpacing: Bool = false, bottomSpacing: Bool = false) {
        super.init(topSpacing, bottomSpacing)
    }
}

class PageFact : PageComponent {
    var text: String
    init(_ text: String, topSpacing: Bool = false, bottomSpacing: Bool = false) {
        self.text = text
        super.init(topSpacing, bottomSpacing)
    }
}
