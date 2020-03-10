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
                    .frame(maxWidth: .infinity, maxHeight: 1)
                ScrollView(.vertical, showsIndicators: false) {
                    AnimeDetailView()
                }
            }
        }.onAppear {
            apollo.fetch(query: FetchAnimeByIdQuery(id: 1)) { result in
                print(result)
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
