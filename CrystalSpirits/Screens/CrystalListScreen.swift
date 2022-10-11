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
                HStack{
                    Text("Crystals")
                        .padding(.top)
                        .font(.system(size: 32, weight: .bold, design: .default))
                    
                    Spacer()
                    
                    Image("menu_button")
                }
                .padding(20)
            //TODO: Filter Buttons
            NavigationView{
                List(crystals, id: \.id){
                    item in
                    CrystalCardView(name: item.name, zodiac: item.zodiac, description: item.description)
                }
            }
            .searchable(text: $searchText)
        }
    }
}

struct CrystalListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CrystalListScreen()
    }
}
