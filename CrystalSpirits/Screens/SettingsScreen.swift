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
            HStack{
                Image(systemName: "chevron.backward")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.top, 3)
                
                Text("Settings")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(Color("DarkText"))
            }
            
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
            
            Button {} label: {
                HStack(alignment: .center){
                    Image("GitHub")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Get Started")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold, design: .default))
                }
            }
            .frame(width: 330, height: 50)
            .padding(10)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryBlue")]),
                                      startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(height: 80)
            )
            .clipShape(Capsule())
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
