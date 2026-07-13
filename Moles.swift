//
//  Moles.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 6/6/26.
//

import SwiftUI

struct Moles: View {
    var body: some View {
       
            VStack {
                Text("Moles")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                    .padding(.top, 8)
                    .padding(.horizontal)
                VStack {
                    Text("Moles content")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 1)
                        .padding(.horizontal)
                }
            }
        }
    }

#Preview {
    Moles()
}
