//
//  AnimeDetailBannerView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailBannerView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("demon-slayer")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                .clipped()
            AnimeDetailOverlayText()
            }.foregroundColor(Color.white)
    }
}
