//
//  OnboardingScreen.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//
// Tutorial: https://www.youtube.com/watch?v=vzrWABJ6fhs

import SwiftUI

struct OnboardingScreen: View {
    
    init(){
        UIScrollView.appearance().bounces = false
    }
    
    @State private var currentStep = 0
    
    var body: some View {
        VStack{
            
            // TabView
            TabView(selection: $currentStep){
                //ForEach loop
                //OnboardingData[it].image
                ForEach(0..<OnboardingData.count, id: \.self){ it in
                    ZStack{
                        OnboardSlide(image: OnboardingData[it].image, description: OnboardingData[it].description)
                    }
                    .tag(it)
                } // end of ForEach
            } // end of tabview
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .ignoresSafeArea()
            Spacer()
            
            HStack{
                ForEach(0..<OnboardingData.count, id: \.self){ it in
                    if it == currentStep{
                        Rectangle()
                            .frame(width: 20, height: 10)
                            .cornerRadius(10)
                            .foregroundColor(Color("PrimaryBlue"))
                    } else {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color("LightGrey"))
                    }
                }
            }
            .padding()
            
            if(self.currentStep == 2){
                Button {} label: {
                    Text("Get Started")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 300 , height: 50, alignment: .center)
                        .font(.system(size: 18, weight: .bold, design: .default))
                }
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryBlue")]),
                                          startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .padding()
                .buttonBorderShape(.capsule)
            } else {
                HStack{
                    Button{
                        self.currentStep = OnboardingData.count - 1
                    } label: {
                        Text("Skip")
                            .font(.system(size: 16, weight: .light, design: .default))
                            .foregroundColor(Color("DarkGray"))
                    }
                    
                    Spacer()
                            
                    Button(action: {
                        if (self.currentStep < CrystalData.count - 1){
                            currentStep = currentStep+1
                        }
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
            }
            
        }
        
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
