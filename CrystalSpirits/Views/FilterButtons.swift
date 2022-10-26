//
//  FilterButtons.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct FilterButtons: View {
    
    var filterOption : String
    
    var body: some View {
        
        Button{} label: {
            Text(filterOption)
        }
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        
    }
}

struct FilterButtons_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtons(filterOption: "Filter")
    }
}
