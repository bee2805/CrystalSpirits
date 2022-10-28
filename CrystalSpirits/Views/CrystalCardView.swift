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
        GroupBox{
            VStack{
                Image(crystal.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                
                Text(crystal.name)
                    .foregroundColor(Color("DarkText"))
                    .font(.system(size: 25,
                                  weight: .semibold,
                                  design: .default))
                
                Text(crystal.zodiac)
                    .foregroundColor(Color("DarkText"))
                    .font(.system(size: 18,
                                  weight: .medium,
                                  design: .default))
                
                Text(crystal.description)
                    .lineLimit(2)
                    .padding(3)
                    .foregroundColor(.secondary)
                    .font(.system(size: 18,
                                  weight: .medium,
                                  design: .default))
            }
        }
        .padding(.bottom, 15)
    }
}

struct CrystalCardView_Previews: PreviewProvider {
    static var previews: some View {
        CrystalCardView(crystal: CrystalData[0])
    }
}
