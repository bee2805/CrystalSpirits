//
//  DetailedCrystalView.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/28.
//

import SwiftUI

struct DetailedCrystalView: View {
    
    var crystal: Crystal
    
    var body: some View {
        VStack(alignment: .leading){
            Text(crystal.name)
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(Color("DarkText"))
                .padding(.horizontal, 20)
            
            VStack{
                
                ScrollView(.vertical){
                    
                    GroupBox{
                        Image(crystal.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    }
                    .padding(.bottom)
                    
                    VStack(alignment: .leading){
                        CrystalInfo(title: "Crystal System: ", info: crystal.crystalSystem)
                        CrystalInfo(title: "Chakra: ", info: crystal.chakra)
                        CrystalInfo(title: "Origin: ", info: crystal.origin)
                        CrystalInfo(title: "Zodiac: ", info: crystal.zodiac)
                    }
                    .padding(.horizontal,20)
                    .padding(.bottom, 20)
                    Divider()
                    
                    Text(crystal.description)
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                }

            }
            
            
            
        }
    }
}

struct DetailedCrystalView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedCrystalView(crystal: CrystalData.first!)
    }
}
