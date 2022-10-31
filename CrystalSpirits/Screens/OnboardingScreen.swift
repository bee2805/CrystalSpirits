//
//  OnboardingScreen.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//
// Tutorial: https://www.youtube.com/watch?v=vzrWABJ6fhs

import SwiftUI

struct OnboardingScreen: View {
    
    //ref to AppStorage
    @AppStorage("onboardingComplete") var onboardingComplete = false

    var onboarding: [Onboarding] = OnboardingData
    @State private var currentLocation = 0
    
    var body: some View {
        VStack{
            
            // TabView
            TabView(){
                //ForEach loop
                ForEach(onboarding){ onboard in
                    ZStack{
                        OnboardSlide(onboard: onboard)
                    }
                } // end of ForEach
            } // end of tabview
            .ignoresSafeArea()
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            Spacer()
            
            Button {
                onboardingComplete = true
            } label: {
                Text("Get Started")
                    .foregroundColor(.white)
                    .frame(width: 340 , height: 35, alignment: .center)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .padding(7)
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryBlue")]),
                                      startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(Capsule())
        }
        
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
