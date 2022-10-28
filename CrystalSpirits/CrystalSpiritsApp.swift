//
//  CrystalSpiritsApp.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/09/29.
//

import SwiftUI

@main struct CrystalSpiritsApp: App {
    
    // get app storage onboarding val
//    @AppStorage("onboardingComplete") var onboardingComplete = false
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            //CrystalListScreen()
            SplashScreen()
            
//            if(onboardingComplete){
//                CrystalListScreen()
//            } else {
//                OnboardingScreen()
//            }
        }
    }
}
