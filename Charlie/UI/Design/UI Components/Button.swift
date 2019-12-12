//
//  Button.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import Foundation
import SwiftUI

struct WideButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    init(title: String, backgroundColor: Color = .primaryBlue, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    var body: some View {
        Button(
            action: action,
            label: {
                Text(title)
                    .foregroundColor(.textLight)
                    .font(.system(size: 16, weight: .regular))
            })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 44)
            .background(backgroundColor)
            .cornerRadius(8)
            .padding([.leading, .trailing], 20)
    }
}

struct WideNavigationbutton<Destination: View>: View {
    let title: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
            .foregroundColor(.textLight)
            .font(.system(size: 16, weight: .regular))
            .frame(minWidth: 280, minHeight: 44)
            .background(Color.primaryBlue)
            .cornerRadius(8)
        }
    }
}
