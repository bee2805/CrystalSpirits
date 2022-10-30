//
//  SettingsScreen.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct SettingsScreen: View {
    
    @State var showAbout: Bool = false
    @State private var searchText = ""
    
    @AppStorage("isLightMode") var isLightMode = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Settings")
                .font(.system(size: 32, weight: .bold, design: .default))
                .foregroundColor(Color("DarkText"))
            
            Divider()
                .padding(.bottom)
            
            ScrollView(.vertical){
                GroupBox{
                    DisclosureGroup("About Crystal Spirits", isExpanded: $showAbout){
                        Text("Crystal spirits is your very first pocket crystal enclycopedia. This App was based off of the book 'The crystal Encyclopedia' by Judy Hall. Learn the associations between crystals, the chakras and the zodiac and Get Helpful Advice on using crystals to heal!")
                            .multilineTextAlignment(.center)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        
                        Text("Version 1.0")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                    }
                }
                .padding(.bottom, 10)
                
                GroupBox{
                    VStack{
                        Text("Appearance")
                            .font(.system(size: 20, weight: .semibold, design: .default))
                            .foregroundColor(Color("DarkText"))
                        
                        HStack{
                            Image("LightMode")
                                .resizable()
                                .frame(width: 130, height: 280)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                                .padding(.trailing)
                            
                            Image("DarkMode")
                                .resizable()
                                .frame(width: 130, height: 280)
                                .cornerRadius(10)
                                .shadow(radius: 2)
                        }
                        
                        Picker("Mode", selection: $isLightMode){
                            Text("Light").tag(true)
                            Text("Dark").tag(false)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.top)
                    }
                    .padding(.top, 1)
                    .padding(.bottom, 1)
                    .padding(.horizontal, 20)
                }
            }
            
            Spacer()
            
            Link(destination: URL(string: "https://github.com/bee2805/CrystalSpirits")!, label: {
        
                HStack{
                    //https://www.flaticon.com/free-icon/github_733609?term=github&page=1&position=3&page=1&position=3&related_id=733609&origin=search
                    Image("GitHub")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.trailing, 20)
                    
                    Text("GitHub")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .bold, design: .default))
                }
            })
            .frame(width: 340 , height: 35)
            .padding(7)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryBlue")]),
                                      startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .clipShape(Capsule())
        }
        .padding(.horizontal, 20)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
