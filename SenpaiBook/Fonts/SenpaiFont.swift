//
//  SenpaiFont.swift
//  SempaiBook
//
//  Created by Leonel Menezes on 24/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

enum SenpaiFontType: String {
    case regular = "Sintony-Regular"
    case bold = "Sintony-Bold"
}

class SenpaiFont {
    static func of(type: SenpaiFontType, size: CGFloat) -> Font {
        return Font.custom(type.rawValue, size: size)
    }
}
