//
//  HomeView.swift
//  Restart
//
//  Created by Toshiyana on 2021/11/30.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                // switch OnboardingView
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
