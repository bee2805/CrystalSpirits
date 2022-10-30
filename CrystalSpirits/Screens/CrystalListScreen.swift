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
    @State var searchText = ""
    
//    var filteredCrystals: [Crystal]{
//        if searchText == "" {return}
//    }
    
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
                        ZStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("White"))
                                .shadow(radius: 4)
                            Image(systemName: "gear")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("DarkText"))
                        }
                    })// End of Settings button
                }
                .padding(.horizontal, 20)
                Divider()
                // End of Heading and Settings Buttons
                
                ScrollView(.vertical, showsIndicators: false){
                    SearchBar()
                    
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
                    ForEach(crystal){ crystal in
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
