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
        
        ZStack{
            Capsule()
                .frame(width: 100, height: 40)
                
            Text(filterOption)
                .foregroundColor(.white)
        }
        
    }
}

struct FilterButtons_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtons(filterOption: "Filter")
    }
}
