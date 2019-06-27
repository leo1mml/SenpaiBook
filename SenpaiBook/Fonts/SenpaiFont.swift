//
//  SenpaiFont.swift
//  SempaiBook
//
//  Created by Leonel Menezes on 24/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

enum SenpaiFont: String {
    case thin = "Kanit-Thin"
    case extraLight = "Kanit-ExtraLight"
    case light = "Kanit-Light"
    case regular = "Kanit-Regular"
    case medium = "Kanit-Medium"
    case bold = "Kanit-Bold"
    case extraBold = "Kanit-ExtraBold"
    case black = "Kanit-Black"
    
    func of(size: CGFloat) -> Font {
        return Font.custom(rawValue, size: size)
    }
}
