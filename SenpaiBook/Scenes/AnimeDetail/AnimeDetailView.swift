//
//  AnimeDetailView.swift
//  SenpaiBook
//
//  Created by Leonel Menezes on 25/06/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import SwiftUI

struct AnimeDetailView: View {
    
    init() {
        let query = FetchAnimeByIdQuery(id: 101922)
        apollo.fetch(query: query) { result, error in
            if error != nil {
                print(error)
            }
            if let result = result,
                let data = result.data {
                let media = data.media
                print(media)
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            AnimeDetailBannerView()
            AnimeDetailEpisodeGuideView()
            AnimeDetailDescriptionView()
            AnimeDetailRelatedView()
        }
    }
}
