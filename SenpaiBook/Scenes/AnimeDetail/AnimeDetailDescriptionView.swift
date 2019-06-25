//
//  AnimeDetailDescriptionView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailDescriptionView: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Text("2019")
                Color.white
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 1)
            }
                .font(SenpaiFont.of(type: .regular, size: 12))
                .foregroundColor(.white)
                .padding(.leading)
            HStack {
                Image("demon-slayer")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .frame(width: 150, height: 200)
                    .clipped()
                Spacer()
                AnimeDetailDescription()
            }
                .padding()
        }
    }
}

struct AnimeDetailDescription: View {
    var body: some View {
        VStack {
            HStack {
                Text("\u{2665}")
            }
                .font(.system(size: 45))
                .foregroundColor(SenpaiColor.highlightText)
        }
    }
}
