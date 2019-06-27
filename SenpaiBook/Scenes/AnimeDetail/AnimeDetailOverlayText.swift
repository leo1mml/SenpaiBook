//
//  AnimeDetailOverlayText.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailOverlayText: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Demon Slayer".uppercased())
                .font(SenpaiFont.bold.of(size: 25))
                .foregroundColor(SenpaiColor.highlightText)
            HStack(spacing: 50) {
                Text("2019 -")
                Text("23 min")
            }
            Text("DRAMA, MISTERY, THRILLER")
            }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       maxHeight: 100,
                       alignment: .topLeading)
                .padding(.top, 80)
                .padding([.leading, .bottom], 10)
                .background(LinearGradient(gradient: Gradient(colors: [.clear, SenpaiColor.main]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
                .font(SenpaiFont.regular.of(size: 12))
    }
}
