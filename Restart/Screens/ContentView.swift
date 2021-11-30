//
//  ContentView.swift
//  Restart
//
//  Created by Toshiyana on 2021/11/30.
//

import SwiftUI

struct ContentView: View {
    
    // set up a new onboarding key and appstorage
    // @AppStorage: SwiftUi property wrapper, use the user's defaults
    // "onboarding": User Defaults Key
    // true: This ture value will only be added to the property when the program does not find the ONBOARDING Key previously set in the device's permanent storage.
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
