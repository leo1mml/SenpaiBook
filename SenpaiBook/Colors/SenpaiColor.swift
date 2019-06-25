//
//  SenpaiColor.swift
//  SempaiBook
//
//  Created by Leonel Menezes on 24/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

enum SenpaiColorTypes: String {
    case hightlightText = "HighlightText"
    case main = "MainColor"
}

class SenpaiColor {
    static let highlightText = Color.init(SenpaiColorTypes
        .hightlightText
        .rawValue)
    static let main = Color.init(SenpaiColorTypes
        .main
        .rawValue)
}
