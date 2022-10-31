//
//  CrystalInfo.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/28.
//

import SwiftUI

struct CrystalInfo: View {
    
    var title : String
    var info : String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 22, weight: .semibold, design: .default))
            
            Text(info)
                .font(.system(size: 20, weight: .regular, design: .default))
        }
        .padding(.bottom, 1)
    }
}

struct CrystalInfo_Previews: PreviewProvider {
    static var previews: some View {
        CrystalInfo(title: "Chakras", info: "Heart and Throat")
    }
}
