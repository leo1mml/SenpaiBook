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
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 10) {
                Text("2019")
                Color.white
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 1)
            }
                .font(SenpaiFont.regular.of(size: 12))
                .foregroundColor(.white)
                .padding(.leading)
            HStack(alignment: .top, spacing: 20) {
                Image("demon-slayer")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fill)
                    .frame(width: 120, height: 180)
                    .clipped()
                AnimeDetailDescription()
            }
                .padding()
        }
    }
}

struct AnimeDetailDescription: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("\u{2665}")
                    .font(.system(size: 40))
                    .foregroundColor(SenpaiColor.highlightText)
                VStack {
                    HStack(alignment: .firstTextBaseline) {
                        Text("9.0")
                            .font(SenpaiFont.bold.of(size: 45))
                        Text("/10.0")
                    }
                    Text("444444 Votações")
                    .font(SenpaiFont.bold.of(size: 12))
                    .truncationMode(.tail)
                }
                
            }
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .lineLimit(nil)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                .font(SenpaiFont.light.of(size: 14))
        }.foregroundColor(.white)
        .offset(y: -20)
    }
}
