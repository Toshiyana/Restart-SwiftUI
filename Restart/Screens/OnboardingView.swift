//
//  OnboardingVIew.swift
//  Restart
//
//  Created by Toshiyana on 2021/11/30.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Onboarding")
                    .font(.largeTitle)
                
                Button {
                    // switch HomeView
                    isOnboardingViewActive = false
                } label: {
                    Text("Start")
                }
            }//: VSTACK
        }//: ZSTACK
    }
}

struct OnboardingVIew_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
