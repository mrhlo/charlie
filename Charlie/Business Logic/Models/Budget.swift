//
//  Budget.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import Foundation

enum PriceTier: String, Codable {
    case tier1 = "1"
    case tier2 = "2"
    case tier3 = "3"
    case tier4 = "4"
}


struct Price: Codable {
    let tier: PriceTier
    let currency: String
    
    init(tier: PriceTier, currency: String) {
        self.tier = tier
        self.currency = currency
    }
}
