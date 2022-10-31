//
//  SearchBar.swift
//  CrystalSpirits
//
//  Created by Bronwyn Potgieter on 2022/10/26.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text : String
    @State private var isEditing = false
    
    var body: some View {
        HStack(spacing: 15){
            
            TextField("Search...", text: $text)
                .padding(15)
                .padding(.horizontal,25)
                .background(
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(
                            LinearGradient(gradient: Gradient(colors: [Color("PrimaryPink"), Color("PrimaryBlue")]),
                                    startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                )
                .foregroundColor(Color("DarkText"))
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("PrimaryPurple"))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        
                        Spacer()
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(Color("PrimaryPurple"))
                                    .padding(.trailing, 10)
                            })
                        }
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }, label: {
                    Text("Cancel")
                })
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.linear, value: 500)
            }
        }
    }
}
