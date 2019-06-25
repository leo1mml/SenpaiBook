//
//  SenpaiHeaderView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI


struct SenpaiHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image("goku")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text("SENPAI")
                        .font(SenpaiFont.of(type: .bold, size: 14))
                        .color(SenpaiColor.highlightText)
                    Text("BOOK")
                        .font(SenpaiFont.of(type: .bold, size: 26))
                        .color(.white)
                    }.lineSpacing(0)
                }.padding()
            }
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 80, alignment: .leading)
    }
}
