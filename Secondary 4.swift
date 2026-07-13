//
//  Secondary 4.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 8/6/26.
//
import SwiftUI

struct Secondary_4: View {
    var body: some View {
        
            VStack {
                Text("Secondary 4")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontWidth(.standard)
                VStack
                {NavigationLink(destination: Reactivity_Series())
                    {
                        Text("Reactivity Series")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 173 / 255, green: 216 / 255, blue: 230 / 255))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                }
                VStack
                {NavigationLink(destination: Electrochemistry())
                    {
                        Text("Electrochemistry")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 173 / 255, green: 216 / 255, blue: 270 / 270)
                                
                                .cornerRadius(10)
                            )
                    }
                }
            
        }
    }
}
#Preview {
    Secondary_4()
}
