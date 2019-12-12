//
//  Venue.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import Foundation

struct Venue: Codable {
    let name: String
    let price: Price
    let address: Address
    let rating: Rating
    let imageURL: URL
    
    init(name: String,
         price: Price,
         address: Address,
         rating: Rating,
         imageURL: URL) {
        self.name = name
        self.price = price
        self.address = address
        self.rating = rating
        self.imageURL = imageURL
    }
}

extension Venue {
    static let mocked = Venue(
        name: "Fine Bagels",
        price: Price(tier: .tier1, currency: "$"),
        address: Address(street: "Warschauer Str. 74"),
        rating: Rating(value: 8.7, colorHEX: "73CF42"),
        imageURL: URL(string: "https://fastly.4sqi.net/img/general/900x450/45430762_lxZwSTfbFcyQNZ8AOxzKcw4W02fFbTrtpLf6HdAYkL4.jpg")!)
}
