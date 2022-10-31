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
    @State var crystal: [Crystal] = CrystalData
    
    private let adaptiveColomns = [
        GridItem(.adaptive(minimum: 163))
    ]
    
    @State var text = ""
    
    var filteredCrystals: [Crystal]{
        if (text.isEmpty) {
            return CrystalData
        } else {
            return CrystalData.filter { $0.name.contains(text) }
        }
    }
    
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
                // End of Heading and Settings Buttons
                
                ScrollView(.vertical, showsIndicators: false){
                    SearchBar(text: $text)
                        .padding(.bottom, 20)
                    
//                    ScrollView(.horizontal, showsIndicators: false){
//                        HStack{
//                            Text("Orange")
//                                .onTapGesture {
//                                    self.crystal = filterByColor(color: "Orange")
//                                }
//
//                            FilterButtons(filterOption: "Orange")
//                                .onTapGesture {
//                                    self.crystal = filterByColor(color: "Orange")
//                                }
//
//                            FilterButtons(filterOption: "Yellow")
//                                .onTapGesture {
//                                    self.crystal = filterByColor(color: "Yellow")
//                                }
//
//                            FilterButtons(filterOption: "Green")
//                                .onTapGesture {
//                                    self.crystal = filterByColor(color: "Green")
//                                }
//
//                            FilterButtons(filterOption: "Blue")
//                                .onTapGesture {
//                                    self.crystal = filterByColor(color: "SecondaryBlue")
//                                }
//
//                            Image(systemName: "multiply.circle.fill")
//                                .foregroundColor(Color("PrimaryPurple"))
//                                .padding(.trailing, 10)
//                                .onTapGesture {
//                                    self.crystal = CrystalData
//                                }
//                        }
//                    }
//                    .padding(.bottom, 25)
                    // End of Filter Buttons

                    LazyVGrid(columns: adaptiveColomns, spacing: 20){
                        ForEach(text.isEmpty ? crystal : filteredCrystals){ crystal in
                            NavigationLink(destination: DetailedCrystalView(crystal: crystal), label: {
                                CrystalCardView(crystal: crystal)
                            })
                        } // end of ForEach
                    }
                }
                .padding(.horizontal, 20)

            } //Outer VStack
        }
    }
}

struct CrystalListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CrystalListScreen()
    }
}
