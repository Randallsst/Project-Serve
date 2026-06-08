//
//  Chemical Equation.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//

import SwiftUI

struct Chemical_Equation: View {
    var body: some View {
        ZStack {
            Color(red: 161/255, green: 197/255, blue: 102/255)
                .ignoresSafeArea()
            VStack {
                Text("Chemical Equations")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                    .padding(.top, 1)
                    .padding(.horizontal)
                    Text("Chemical equations for Anions:")
                        .fontWeight(.bold)
                        .font(.title2)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 1)
                        .padding(.horizontal)
                        Text("Anions with -1 charge: ")
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(.top, -25)
                            .padding(.horizontal)
                    Text("Fluoride [F⁻]")
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, -49)
                        .padding(.horizontal)
                    Text("Chloride [Cl⁻]")
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, -63)
                        .padding(.horizontal)
                    Text("Bromide [Br⁻]")
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, -73)
                        .padding(.horizontal)
                    Text("Iodide [I⁻]")
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, -83)
                        .padding(.horizontal)
                    Text("Hydroxide [OH⁻]")
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, -93)
                        .padding(.horizontal)
                Text("Nitrate [NO₃⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, -103)
                    .padding(.horizontal)
                Text("Manganete [MnO₄⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, -110)
                    .padding(.horizontal)
                Text("Anions with -2 charge:")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, -130)
                    .padding(.horizontal)
                Text("Oxide [O²⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    .padding(.top, -150)
                Text("Carbonate [CO₃²⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    .padding(.top, -165)
                Text("Sulfate [SO₄²⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.horizontal)
                    .padding(.top, -180)
                Text("Anions with -3 charge:")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, -190)
                    .padding(.horizontal)
                Text("Phosphate [PO₄³⁻]")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, -210)
                    .padding(.horizontal)
                
                    }
                }
                
            }
        }

#Preview {
    Chemical_Equation()
}
