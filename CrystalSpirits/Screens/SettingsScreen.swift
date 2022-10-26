//
//  SettingsScreen.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Settings")
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(Color("DarkText"))
            
            GroupBox{
                VStack{
                    Text("Appearance")
                        .font(.system(size: 25, weight: .semibold, design: .default))
                        .foregroundColor(Color("DarkText"))
                    
                    HStack{
                        Image("LightMode")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .padding(.trailing)
                        
                        Image("DarkMode")
                            .resizable()
                            .frame(width: 130, height: 280)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                    }
                }
                .padding(.top, 1)
                .padding(.bottom, 1)
                .padding(.leading)
                .padding(.trailing)
            }
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
