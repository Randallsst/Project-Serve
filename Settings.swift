//
//  Settings.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 10/6/26.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                Color(red: 161/255, green: 197/255, blue: 102/255)
                    .ignoresSafeArea()

                VStack(alignment: .leading) {
                    Text("Settings")
                        .font(.system(size: 40))
                        .fontWeight(.bold)

                    NavigationLink(destination: ExamSCORE()) {
                        Text("Edit Exam Score")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                    }
                    NavigationLink(destination: GOAL()) {
                        Text("Edit Goals")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                    }
                    NavigationLink(destination: ExamDATE()) {
                        Text("Edit Exam Date")
                            .font(.headline)
                            .frame(width: 370, height: 60)
                            .background(Color(red: 0.3, green: 0.6, blue: 0.25))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Settings()
}
