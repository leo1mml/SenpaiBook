//
//  AnimeDetailOverlayText.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailOverlayText: View {
    
    let overlayTextViewModel: AnimeDetailViewModel.AnimeDetailOverlayTextViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(overlayTextViewModel.title.uppercased())
                .font(SenpaiFont.bold.of(size: 25))
                .foregroundColor(SenpaiColor.highlightText)
            HStack(spacing: 50) {
                Text("\(overlayTextViewModel.startYear) -")
                Text("23 min")
            }
            Text(overlayTextViewModel.genres.joined(separator: ", "))
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
