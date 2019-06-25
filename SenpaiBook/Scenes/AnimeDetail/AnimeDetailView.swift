//
//  AnimeDetailView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailView: View {
    var body: some View {
        VStack(spacing: 0) {
            Divider()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1)
                .background(Color.white)
            AnimeDetailBannerView()
            AnimeDetailEpisodeGuideView()
            Spacer()
        }
    }
}
