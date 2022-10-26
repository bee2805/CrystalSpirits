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
    var crystals = CrystalData
    @State var searchText = ""
    
    var body: some View {
        VStack{
            // Heading and Settings Button
            HStack{
                // Heading
                Text("Crystals")
                    .padding(.top)
                    .font(.system(size: 32, weight: .bold, design: .default))
                
                Spacer()
                
                // Settings Button
                ZStack{
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    Image(systemName: "gear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                } // End of Settings button
            }
            .padding(20)
            Divider()
            // End of Heading and Settings Button
        
            SearchBar()
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(CrystalType.allCases, id: \.self){ type in
                        FilterButtons(filterOption: type.rawValue)
                        .buttonStyle(.bordered)
                    }
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 5)
            // End of Filter Buttons
            
            // TODO: Crystal List
            
            
        } //Outer VStack
    }
}

struct CrystalListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CrystalListScreen()
    }
}
