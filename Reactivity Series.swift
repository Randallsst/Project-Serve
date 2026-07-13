//
//  Reactivity series.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//


import SwiftUI

struct Reactivity_Series: View {
    var body: some View {
        
            VStack {
                Text("Reactivity series")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                    .padding(.top, 8)
                    .padding(.horizontal)
                VStack {
                    Text("Reactivity series")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 1)
                        .padding(.horizontal)
                }
            }
        
    }
}

#Preview {
    Reactivity_Series()
}
