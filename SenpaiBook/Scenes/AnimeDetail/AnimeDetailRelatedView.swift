//
//  AnimeDetailRelatedView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailRelatedView: View {
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text("RELATED")
                .font(SenpaiFont.of(type: .bold, size: 18))
            .padding()
            GeometryReader { geometry in
                ScrollView(showsHorizontalIndicator: false) {
                    HStack {
                        ForEach((1...10).reversed()) {
                            AnimeWidget(number: $0)
                        }

                    }
                        .frame(height: geometry.size.height)
                }
            }
                .frame(minWidth: 0, maxWidth: .infinity, idealHeight: 400)
        }
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct AnimeWidget: View {
    let number: Int
    var body: some View {
        VStack {
            Image("goku")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 120, height: 180)
                .clipped()
        }
    }
}