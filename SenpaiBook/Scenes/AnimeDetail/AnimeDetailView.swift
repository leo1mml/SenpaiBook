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
    
    let overlayTextVM = AnimeDetailViewModel.AnimeDetailOverlayTextViewModel(title: "Demon Slayer", startYear: "2019", endYear: "", genres: ["drama, horror"])
    let descriptionVM = AnimeDetailViewModel
        .AnimeDetailDescriptionViewModel(imageUrl: "demon-slayer", description: "Anime muito foda seja onde for", score: 10, numberOfVotes: 55)
    
    var body: some View {
        VStack(spacing: 0) {
            AnimeDetailBannerView(overlayTextViewModel: overlayTextVM)
            AnimeDetailEpisodeGuideView(numberOfEpisodes: 55)
            AnimeDetailDescriptionView(descriptionViewModel: descriptionVM)
            AnimeDetailRelatedView()
        }
    }
}
