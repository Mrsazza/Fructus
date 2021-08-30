//
//  FructusApp.swift
//  Fructus
//
//  Created by Sazza on 29/8/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
