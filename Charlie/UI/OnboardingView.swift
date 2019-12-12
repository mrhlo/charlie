//
//  ContentView.swift
//  Charlie
//
//  Created by Halil Gursoy on 11.12.19.
//  Copyright © 2019 Halil. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.primaryRed.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Say 👋 to")
                        .foregroundColor(.textLight)
                        .font(.system(size: 21, weight: .semibold))
                        .offset(y: -120)
                    Text("Charlie!")
                        .foregroundColor(.textLight)
                        .font(.system(size: 24, weight: .bold))
                        .offset(y: -120)
                    Text("Charlie is your new gastronmy assistant.")
                        .foregroundColor(.textLight)
                        .font(.system(size: 16, weight: .regular))
                    Text("It will help you decide where you want to eat for a casual lunch or suggest you a fancy restaurant for your dinner date")
                        .padding([.leading, .trailing], 20)
                        .padding(.top, 12)
                        .foregroundColor(.textLight)
                        .font(.system(size: 16, weight: .regular))
                        .multilineTextAlignment(.center)
                    WideNavigationbutton(title: "START NOW", destination: RecommendationView(venue: .mocked))
                        .offset(y: 100)
                }
             }
        }
    }
    
    private func didTapStartNow() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
