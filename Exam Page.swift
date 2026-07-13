//
//  Exam Page.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 10/6/26.
//
import SwiftUI

struct ExamDATE: View {
    @State private var testName = ""
    @State private var examDate = Date()

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 22) {
                Text("Exam Date")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundStyle(.black)
                    .padding(.top, 8)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Test / Assignment")
                        .font(.headline)
                        .foregroundStyle(.black.opacity(0.8))

                    TextField("e.g. Class Test 1", text: $testName)
                        .padding()
                        .background(Color.gray.opacity(0.10))
                        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                }

                VStack(alignment: .leading, spacing: 10) {
                    Text("Date")
                        .font(.headline)
                        .foregroundStyle(.black.opacity(0.8))

                    DatePicker(
                        "Select exam date",
                        selection: $examDate,
                        displayedComponents: .date
                    )
                    .datePickerStyle(.compact)
                    .padding()
                    .background(Color.gray.opacity(0.10))
                    .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                }

                Button {
                    UserDefaults.standard.set(examDate, forKey: "examDate")
                } label: {
                    Text("Save Exam Date")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(
                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .fill(Color(red: 173/255, green: 216/255, blue: 230/255))
                        )
                }
                .buttonStyle(.plain)
                .padding(.top, 8)

                Spacer()
            }
            .padding(.horizontal, 20)
        }
        .onAppear {
            if let savedDate = UserDefaults.standard.object(forKey: "examDate") as? Date {
                examDate = savedDate
            }
        }
    }
}

#Preview {
    ExamDATE()
}
