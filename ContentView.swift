//
//  ContentView.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 4/5/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentQuote = 0
    
    let quotes = [
        "Maybe it is just the friends we made along the way",
        "SET YOUR HEART ABLAZE RAHHH",
        "Set your school ablaze",
        "Life is not sunshine rainbow",
        "BOMBOCLAT",
        "Throughout heaven and earth I alone am the honoured one",
        "With the sole exception of hydrogen atom-"
    ]
    
    var body: some View {
        
        ZStack {
            
            // Background
            Color(red: 0.67, green: 0.80, blue: 0.40)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                // Quote Button
                Button(action: {
                    currentQuote = (currentQuote + 1) % quotes.count
                }) {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(red: 0.56, green: 0.68, blue: 0.33))
                        .frame(height: 150)
                        .overlay(
                            Text(quotes[currentQuote])
                                .font(.system(size: 28, weight: .medium))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                                .padding()
                        )
                        .padding(.horizontal)
                }
                .padding(.top, 15)
                
                // Calendar Card
                Button(action: {
                    
                }) {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(
                            Color(
                                red: 199/255,
                                green: 229/255,
                                blue: 138/255
                            )
                        )
                        .frame(width: 200, height: 200)
                        .overlay(
                            VStack(spacing: 15) {
                                
                                Text("Your next exam date:")
                                    .bold()
                                    .font(.title3)
                                
                                Image(systemName: "calendar")
                                    .font(.system(size: 100))
                            }
                        )
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                
                Spacer()
            }
           
            }
        ZStack{
            Color(red: 199/255, green: 229/255, blue: 138/255)
                .ignoresSafeArea()
                .frame(height:70)
        }
    
    }
}

#Preview {
    ContentView()
}
