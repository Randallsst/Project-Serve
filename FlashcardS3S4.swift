//
//  FlashcardS3S4.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 14/6/26.
//

import SwiftUI

struct FlashcardS3S4: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color(red: 161/255, green: 197/255, blue: 102/255)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("Flashcards")
                        .font(.title)
                        .fontWeight(.bold)
                        .fontWidth(.standard)
                    VStack {NavigationLink(destination: S3flash()) {
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
                                    .background(Color(red: 0.47, green: 0.69, blue: 0.68))
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
    FlashcardS3S4()
}
