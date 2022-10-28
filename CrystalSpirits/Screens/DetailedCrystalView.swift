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
            HStack{
                Image(systemName: "chevron.backward")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.top, 3)
                
                Text("Crystal Name")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(Color("DarkText"))
            }
            .padding(.leading,20)
            
            VStack{
                GroupBox{
                    Image("pink_crystal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                }
                .padding(.bottom)
                
                VStack(alignment: .leading){
                    CrystalInfo(title: "Crystal System: ", info: "Triagonal")
                    CrystalInfo(title: "Chakra: ", info: "Heart and Throat")
                    CrystalInfo(title: "Origin: ", info: "USA, Canada, Mexico, Africa")
                    CrystalInfo(title: "Zodiac: ", info: "Gemini and Scorpi0")
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .padding(.bottom, 20)
                Divider()
                
                ScrollView(.vertical){
                    Text("Orange Drusy Quartz is the ideal stone for the bedridden and for carers. It fosters harmony, making it easier to accept and give help, and show thankfullness and appreciation. It increases compassion and instills the ability to laugh at life, even in the most difficult circumstances")
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
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
