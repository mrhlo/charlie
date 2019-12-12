//
//  LocationSuggestionView.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import SwiftUI

enum SearchDate {
    case now
    case future(Date)
}

enum Occasion {
    case casual
    case business
    case date
}

enum Intent {
    case coffee
    case drinks
    case foodAndDrinks
}

enum CustomizationFlow {
    case initial
    case date(SearchDate)
    case occasion(date: SearchDate, occasion: Occasion)
    case intent(date: SearchDate, occassion: Occasion, intent: Intent)
    case budget(date: SearchDate, occassion: Occasion, intent: Intent, budget: PriceTier)
}

struct CustomizationFlowView: View {
    var flow: CustomizationFlow = .budget(date: .now, occassion: .casual, intent: .foodAndDrinks, budget: .tier2)
    
    var body: some View {
        Text("CustomizationFlow")
    }
}
