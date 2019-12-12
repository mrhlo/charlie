//
//  RecommendationView.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import SwiftUI

struct RecommendationView: View {
    let venue: Venue
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.primaryRed.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text("Here is Charlie’s Recommendation:")
                    .font(.system(size: 27, weight: .semibold))
                    .foregroundColor(.textLight)
                    .padding([.leading, .trailing], 20)
                RecommendationCardView(
                    venue: venue,
                    directionsButtonTapped: self.giveDirectionsButtonTapped
                )
                .padding([.leading, .trailing], 20)
            }
        }
    }
    
    private func giveDirectionsButtonTapped() {
        
    }

}
