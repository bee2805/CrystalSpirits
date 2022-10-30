//
//  CrystalSpiritsApp.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/09/29.
//

import SwiftUI

@main struct CrystalSpiritsApp: App {
    
    // get app storage onboarding val
    @AppStorage("onboardingComplete") var onboardingComplete = false
    @AppStorage("isLightMode") var isLightMode = false
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            //CrystalListScreen()
//            SplashScreen()
            
            if(onboardingComplete){
//                SettingsScreen()
                CrystalListScreen()
                    .preferredColorScheme(isLightMode ? .light : .dark)
            } else {
                OnboardingScreen()
            }
        }
    }
}
