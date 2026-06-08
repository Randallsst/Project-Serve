//
//  Covalent Bonding.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//

import SwiftUI

struct Covalent_Bonding: View {
    var body: some View {
        ZStack {
            Color(red: 161/255, green: 197/255, blue: 102/255)
                .ignoresSafeArea()
            VStack {
                Text("Covalent Bonding")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                    .padding(.top, 8)
                    .padding(.horizontal)
                VStack {
                    Text("Covalent Bonding")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 1)
                        .padding(.horizontal)
                }
            }

        }
    }
}

#Preview {
    Covalent_Bonding()
}

