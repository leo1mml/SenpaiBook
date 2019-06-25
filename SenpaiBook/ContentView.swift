//
//  ContentView.swift
//  SempaiBook
//
//  Created by Leonel Menezes on 20/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            SenpaiColor.main.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                Header()
                Divider()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1)
                    .background(Color.white)
                AnimeBanner()
                Spacer()
            }
        }
        
    }
}

struct AnimeBanner: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image("demon-slayer")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                .clipped()
            OverlayText()
            }.foregroundColor(Color.white)
    }
}

struct OverlayText: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Demon Slayer".uppercased())
                .font(SenpaiFont.of(type: .bold, size: 25))
                .foregroundColor(SenpaiColor.highlightText)
            HStack(spacing: 50) {
                Text("2019 -")
                Text("23 min")
            }
            Text("DRAMA, MISTERY, THRILLER")
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 100,
                   alignment: .topLeading)
            .padding(.top, 80)
            .padding(.leading, 20)
            .padding(.bottom, 10)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, SenpaiColor.main]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
            .font(SenpaiFont.of(type: .regular, size: 12))
    }
}

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Image("goku")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 0) {
                    Text("SENPAI")
                        .font(SenpaiFont.of(type: .bold, size: 14))
                        .color(SenpaiColor.highlightText)
                    Text("BOOK")
                        .font(SenpaiFont.of(type: .bold, size: 26))
                        .color(.white)
                    }.lineSpacing(0)
                }.padding()
            }
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 80, alignment: .leading)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
