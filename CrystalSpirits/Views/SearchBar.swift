//
//  SearchBar.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .foregroundColor(Color("PrimaryPurple"))
            
            TextField("Search", text: .constant(""))
                .disabled(true)
        }
        .padding(.vertical, 12)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .strokeBorder(
                    LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryPurple"), Color("PrimaryBlue")]),
                            startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        )
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
