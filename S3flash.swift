//
//  S3flash.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 14/6/26.
//

import SwiftUI

struct S3flash: View {
    
    
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
                        Text("Moles flashcards")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    
                    NavigationLink(destination: Covalent_Bonding()) {
                        Text("Covalent Bonding flashcards")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: Chemical_Equation()) {
                        Text("Chemical Equations flashcards")
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
    S3flash()
}
