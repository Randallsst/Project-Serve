//
//  Secondary 4.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//
import SwiftUI

struct Secondary_4: View {
    var body: some View {
        ZStack {
            Color(red: 119/255, green: 178/255, blue: 175/255)
                .ignoresSafeArea()
            VStack {
                Text("Secondary 4")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                VStack
                {NavigationLink(destination: Secondary_3())
                {
                Text("Reactivity Series")
                        .font(.headline)
                        .frame(width: 370, height: 60)
                        .background(Color(red: 123/255, green: 207/255, blue: 183/255))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    }
                    }
                VStack
                {NavigationLink(destination: Secondary_3())
                    {
                Text("Electrochemistry")
                        .font(.headline)
                        .frame(width: 370, height: 60)
                        .background(Color(red: 123/255, green: 207/255, blue: 183/255))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    }
                    }
                }
                }
            }
        }

#Preview {
    Secondary_4()
}
