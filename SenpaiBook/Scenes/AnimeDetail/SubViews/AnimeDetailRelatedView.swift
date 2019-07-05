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
                .font(SenpaiFont.bold.of(size: 18))
                .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach((1...10).reversed()) {
                        AnimeWidget(number: $0)
                    }
                }
            }
        }
            .foregroundColor(.white)
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
            Text("Dragon Ball")
        }
    }
}


