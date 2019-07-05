//
//  AnimeDetailBannerView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailBannerView: View {
    let overlayTextViewModel: AnimeDetailViewModel.AnimeDetailOverlayTextViewModel
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("goku")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()
            AnimeDetailOverlayText(overlayTextViewModel: overlayTextViewModel)
            }.foregroundColor(Color.white)
    }
}
