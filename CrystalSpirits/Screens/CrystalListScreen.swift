//
//  CrystalListScreen.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/09/29.
//

import SwiftUI

//MARK: Screen that displays all crystals

struct CrystalListScreen: View {
    
    // getting crystal data
    var crystal: [Crystal] = CrystalData
    
    @State var text = ""
    
    var body: some View {
        NavigationView{
            VStack{
                 //Heading and Settings Button
                HStack{
                    // Heading
                    Text("Crystals")
                        .padding(.top)
                        .font(.system(size: 32, weight: .bold, design: .default))
                        .foregroundColor(Color("DarkText"))

                    Spacer()

                    // Settings Button
                    NavigationLink(destination: SettingsScreen(), label: {
                        SettingsButton()
                    })// End of Settings button
                }
                .padding(.horizontal, 20)
                Divider()
                // End of Heading and Settings Buttons
                
                ScrollView(.vertical, showsIndicators: false){
                    SearchBar(text: $text)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(CrystalType.allCases, id: \.self){ type in
                                FilterButtons(filterOption: type.rawValue)
                                .buttonStyle(.bordered)
                            }
                        }
                    }
                    .padding(.vertical, 5)
                    // End of Filter Buttons
                    // TODO: Crystal List
                    ForEach(crystal.filter({"\($0)".contains(text) || text.isEmpty})){ crystal in
                        NavigationLink(destination: DetailedCrystalView(crystal: crystal), label: {
                            CrystalCardView(crystal: crystal)
                        })
                    } // end of ForEach
                }
                .padding(.horizontal, 20)
                .padding(.top)

            } //Outer VStack
        }
    }
}

struct CrystalListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CrystalListScreen()
    }
}
