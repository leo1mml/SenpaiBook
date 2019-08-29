//
//  ImageError.swift
//  SenpaiBook
//
//  Created by leonel.menezes.lima on 28/08/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import Foundation

enum ImageError: String, Error, CustomStringConvertible {
    
    case invalidDataFormat = "Could not decode an image from the given data object."
    
    var description: String {
        return self.rawValue
    }
}
