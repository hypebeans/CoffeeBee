//
//  PageProgress.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

public enum pageProgress {
    case initial
}

public class PageProgress: ObservableObject {
    
    public init() {
        currPage = UserDefaults.standard.integer(forKey: "currPage")
        pageProgress = .initial
    }
    
    @Published public var currPage: Int {
        didSet {
            UserDefaults.standard.set(currPage, forKey: "currPage")
        }
    }
//    @Published public var page: Int
    @Published public var pageProgress : pageProgress
    
//    public func prev() {
//        if pageProgress == .initial {
//            pageProgress = .applyChanges
//        } else {
//            currPage -= 1
//            pageProgress = .initial
//        }
//    }
//    
//    public func next() {
//        if pageProgress == .initial {
//            pageProgress = .applyChanges
//        } else {
//            currPage += 1
//            pageProgress = .initial
//        }
//    }
    
    public func reset() {
        currPage = 0
        pageProgress = .initial
    }
}
