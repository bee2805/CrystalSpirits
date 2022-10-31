//
//  CrystalCardView.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/11.
//

import SwiftUI

struct CrystalCardView: View {
    // TODO: Add Images
    var crystal: Crystal
    // MARK: - Body
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 163, height: 220)
                .foregroundColor(Color(crystal.color))
            
            VStack{
                Image(crystal.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color("DarkText"))
                    .padding(.top, -50)
                
                Text(crystal.name)
                    .lineLimit(1)
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("DarkText"))
                
                Text(crystal.zodiac)
                    .lineLimit(1)
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color("DarkText"))
                    .padding(.bottom, 2)
                
                Text(crystal.description)
                    .lineLimit(3)
                    .font(.system(size: 15, weight: .thin))
                    .foregroundColor(Color("DarkText"))
                
            }
            .padding(20)
        }
        .padding(.bottom, 10)
    }
}

struct CrystalCardView_Previews: PreviewProvider {
    static var previews: some View {
        CrystalCardView(crystal: CrystalData[0])
    }
}
