//
//  RecommendationCardView.swift
//  Charlie
//
//  Created by Halil Gursoy on 12.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import SwiftUI
import URLImage

struct RecommendationCardView: View {
    let venue: Venue
    let directionsButtonTapped: () -> Void
    
    var body: some View {
        VStack {
            URLImage(venue.imageURL) { proxy in
                proxy.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
            }
            VStack(alignment: .leading) {
                Text(venue.name)
                    .font(.system(size: 27, weight: .semibold))
                Text(venue.address.street)
                    .font(.system(size: 14, weight: .semibold))
                    .padding(.bottom, 20)
            }
            .padding([.leading, .trailing], 20)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            WideButton(
                title: "TAKE ME THERE!",
                backgroundColor: .primaryGreen,
                action: self.directionsButtonTapped
            )
                .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
    }
}
