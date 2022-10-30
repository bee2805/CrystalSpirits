//
//  SettingsButton.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/30.
//

import SwiftUI

struct SettingsButton: View {
    var body: some View {
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
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}
