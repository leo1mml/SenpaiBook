//
//  AnimeDetailEpisodeGuideView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailEpisodeGuideView: View {
    
    let numberOfEpisodes: Int
    
    var body: some View {
        HStack {
            Text("GUIA DE EPISÓDIOS")
            .font(SenpaiFont.bold.of(size: 18))
            Spacer()
            Text("\(numberOfEpisodes) EPISÓDIOS \u{2192}")
            .font(SenpaiFont.regular.of(size: 12))
        }
            .foregroundColor(.white)
            .padding()
            .padding(.top, 0)
    }
}

