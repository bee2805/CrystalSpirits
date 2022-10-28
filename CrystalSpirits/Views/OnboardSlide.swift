//
//  OnboardSlide.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct OnboardSlide: View {
    
    var onboard: Onboarding
    
    var body: some View {
        Image(onboard.image)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.top)
        
        VStack{
            Text(onboard.description)
                .padding(.top, 400)
                .padding(.leading, 70)
                .padding(.trailing, 70)
                .font(.system(size: 20, weight: .regular, design: .default))
                .multilineTextAlignment(.center)
                .foregroundColor(Color("DarkText"))
        }
    }
}

struct OnboardSlide_Previews: PreviewProvider {
    static var previews: some View {
        OnboardSlide(onboard: OnboardingData[0])
    }
}
