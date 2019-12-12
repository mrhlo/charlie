//
//  Rating.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import Foundation

struct Rating: Codable {
    let value: Float
    let colorHEX: String
    
    init(value: Float, colorHEX: String) {
        self.value = value
        self.colorHEX = colorHEX
    }
}
