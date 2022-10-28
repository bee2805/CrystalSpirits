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
            
            ScrollView(.vertical){
                GroupBox{
                    HStack{
                        Text("About")
                            .font(.system(size: 25, weight: .semibold, design: .default))
                            .foregroundColor(Color("DarkText"))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                    }
                }
                .padding(.bottom, 10)
                
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
                        
                        //https://www.flaticon.com/free-icon/github_733609?term=github&page=1&position=3&page=1&position=3&related_id=733609&origin=search
                    }
                    .padding(.top, 1)
                    .padding(.bottom, 1)
                    .padding(.leading)
                    .padding(.trailing)
                }
            }
            
            Spacer()
            
//            Link(destination: URL(string: "https://github.com/bee2805/CrystalSpirits")!), label: {
//                HStack{
//                    Text("GitHub")
//                        .bold()
//                }
//            })
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
