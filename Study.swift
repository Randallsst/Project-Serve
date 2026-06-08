//
//  ContentView.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 27/5/26.
//

import SwiftUI

struct Study: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 0.67, green: 0.80, blue: 0.40)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("Study")
                        .font(.title)
                        .fontWeight(.bold)
                        .fontWidth(.standard)
                    VStack {NavigationLink(destination: Secondary_3()) {
                        Text("Secondary 3")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.35, green: 0.70, blue: 0.30))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                            VStack {NavigationLink(destination: Secondary_4()) {
                                Text("Secondary 4")
                                    .font(.title2)
                                    .frame(width: 370, height: 60)
                                    .background(Color(red: 0.35, green: 0.70, blue: 0.30))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .fontWeight(.bold)
                    }
                            }
                        }
                    }
                }
            }
        }
    }

#Preview {
    Study()
}
