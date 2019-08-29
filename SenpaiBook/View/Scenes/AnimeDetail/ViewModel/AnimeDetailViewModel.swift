//
//  AnimeDetailViewModel.swift
//  SenpaiBook
//
//  Created by leonel.menezes.lima on 04/07/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//

import Foundation

enum AnimeDetailViewModel {
    struct AnimeDetailOverlayTextViewModel {
        let title: String
        let startYear: String
        let endYear: String
        let genres: [String]
    }
    
    struct AnimeDetailDescriptionViewModel {
        let imageUrl: String
        let description: String
        let score: Double
        let numberOfVotes: Int
    }
    struct AnimeDetailRelatedWidgetViewModel {
        let imageUrl: String
        let title: String
    }
    
    struct ScreenViewModel {
        let bannerImageUrl: String
        let overlayTexViewModelt: AnimeDetailOverlayTextViewModel
        let descriptionViewModel: AnimeDetailDescriptionViewModel
        let relatedAnimesViewModel: [AnimeDetailRelatedWidgetViewModel]
    }
}
