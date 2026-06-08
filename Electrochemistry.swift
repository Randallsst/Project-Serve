//
//  Electrochemistry.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//

import SwiftUI

struct Electrochemistry: View {
    var body: some View {
        ZStack {
            Color(red: 37/225, green: 150/225, blue: 190/225)
                .ignoresSafeArea()
            VStack {
                Text("Electrochemistry")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                    .padding(.top, 8)
                    .padding(.horizontal)
                VStack {
                    Text("Electrochemistry")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 1)
                        .padding(.horizontal)
                }
            }
        }
    }
}
#Preview {
    Electrochemistry()
}
