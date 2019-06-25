//
//  AnimeDetailEpisodeGuideView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailEpisodeGuideView: View {
    var body: some View {
        HStack {
            Text("GUIA DE EPISÓDIOS")
            .font(SenpaiFont.of(type: .bold, size: 18))
            Spacer()
            Text("5 EPISÓDIOS >")
            .font(SenpaiFont.of(type: .regular, size: 12))
        }
            .foregroundColor(.white)
            .padding()
            .padding(.top, 0)
    }
}

