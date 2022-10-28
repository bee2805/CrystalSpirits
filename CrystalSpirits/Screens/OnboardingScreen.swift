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
            TabView(selection: $currentLocation){
                //ForEach loop
                ForEach(onboarding){ onboard in
                    ZStack{
                        OnboardSlide(onboard: onboard)
                    }
                } // end of ForEach
            } // end of tabview
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
            Spacer()
            
            HStack{
                Rectangle()
                    .frame(width: 20, height: 10)
                    .cornerRadius(10)
                    .foregroundColor(Color("PrimaryBlue"))
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color("LightGrey"))
            }
            .padding()
            
            HStack{
                Button{} label: {
                    Text("Skip")
                        .font(.system(size: 16, weight: .light, design: .default))
                        .foregroundColor(Color("DarkGray"))
                }
                
                Spacer()
                        
                Button(action: {
                    currentLocation += 1
                }){
                    Text("Next")
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .foregroundColor(Color("DarkGray"))
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color("DarkGray"))
                        .font(.system(size: 18, weight: .bold, design: .default))
                }
    
            }
            .padding(.leading, 60)
            .padding(.trailing, 60)
            .padding(.top)
            
            // if(self.currentStep == 2)
            
            Button {
                onboardingComplete = true
            } label: {
                Text("Get Started")
                    .foregroundColor(.white)
                    .frame(width: 300 , height: 50, alignment: .center)
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
