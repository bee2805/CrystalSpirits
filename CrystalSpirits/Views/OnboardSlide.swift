//
//  OnboardSlide.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct OnboardSlide: View {
    
    var image : String
    var description : String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.top)
        
        VStack{
            Text(description)
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
        OnboardSlide(image: "OnboardingOne", description: "Welcome to Crystal Spirits! The Encyclopedia of Crystals by Judy Hall right at your fingertips")
    }
}
