//
//  CrystalSpiritsApp.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/09/29.
//

import SwiftUI

@main struct CrystalSpiritsApp: App {
    
    // get app storage onboarding val
    @AppStorage("isLightMode") var isLightMode = false
    
    var body: some Scene {
        WindowGroup {
            
//            OnboardingScreen()
            
            SplashScreen()
                .preferredColorScheme(isLightMode ? .light : .dark)
//            if(onboardingComplete){
//                CrystalListScreen()
//            } else {
//                OnboardingScreen()
//            }
        }
    }
}
