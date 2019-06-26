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
                SenpaiHeaderView()
                Color.white
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 1)
                GeometryReader { geometry in
                    ScrollView(showsVerticalIndicator: false) {
                        AnimeDetailView()
                            .frame(width: geometry.size.width)
                    }
                }
            }
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
