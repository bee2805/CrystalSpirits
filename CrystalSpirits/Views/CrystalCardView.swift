//
//  CrystalCardView.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/11.
//

import SwiftUI

struct CrystalCardView: View {
    // TODO: Add Images
    // TODO: Change zodiac to a short description
    var name: String
    var zodiac: String
    var description: String
    
    // MARK: - Body
    var body: some View {
        GroupBox{
            VStack{
                Image("pink_crystal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                Text(name)
                    .foregroundColor(Color("DarkText"))
                    .font(.system(size: 25,
                                  weight: .semibold,
                                  design: .default))
                
                Text(zodiac)
                    .foregroundColor(Color("DarkText"))
                    .font(.system(size: 18,
                                  weight: .medium,
                                  design: .default))
                
                Text(description)
                    .lineLimit(2)
                    .padding(3)
                    .foregroundColor(.secondary)
                    .font(.system(size: 18,
                                  weight: .medium,
                                  design: .default))
            }
        }.shadow(radius: 2)
    }
}

struct CrystalCardView_Previews: PreviewProvider {
    static var previews: some View {
        CrystalCardView(name: "Rose Quartz", zodiac: "Leo, Gemini", description: "there will be a description of the crystal here.")
    }
}
