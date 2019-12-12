//
//  Address.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import Foundation

struct Address: Codable {
    let street: String
    
    init(street: String) {
        self.street = street
    }
}
