//
//  GOAL.swift
//  Chem app
//

import SwiftUI

struct GOAL: View {

    @State private var testName = ""
    @State private var targetGrade = ""

    var body: some View {

        ZStack {
            Color(red: 173 / 255, green: 216 / 255, blue: 230 / 255)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 25) {

                Text("Goals")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack(alignment: .leading) {
                    Text("Test / Assignment")

                    TextField("e.g. Class Test 1", text: $testName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

                VStack(alignment: .leading) {
                    Text("Target Grade")

                    TextField("e.g. A1", text: $targetGrade)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GOAL()
}
