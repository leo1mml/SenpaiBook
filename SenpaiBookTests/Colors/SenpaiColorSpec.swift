//
//  SempaiColorSpec.swift
//  SenpaiBookTests
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import Quick
import Nimble
@testable
import SenpaiBook

class SenpaiColorScpec: QuickSpec {
    override func spec() {
        it("has to return a color") {
            expect(SenpaiColor.main).toNot(beNil())
            expect(SenpaiColor.highlightText).toNot(beNil())
        }
    }
}

