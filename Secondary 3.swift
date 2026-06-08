//
//  Study.swift
//  Chem_App
//
//  Created by Leo Andreas Mansukhani on 6/6/26.
//

import SwiftUI

struct Secondary_3: View {
    
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color(red: 161/255, green: 197/255, blue: 102/255)
                    .ignoresSafeArea()
                
                VStack(spacing: 5) {
                    Text("Secondary 3")
                        .font(.title)
                        .fontWeight(.bold)
                        .fontWidth(.standard)
                    
                    NavigationLink(destination: Moles()){
                        Text("Moles")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    
                    NavigationLink(destination: Covalent_Bonding()) {
                        Text("Covalent Bonding")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: Chemical_Equation()) {
                        Text("Chemical Equations")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}


#Preview {
    Secondary_3()
}
