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
            ZStack {
                Color.white
                    .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 24) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Settings")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundStyle(.black)

                        Text("Edit your exam details and goals")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.top, 8)

                    VStack(spacing: 14) {
                        NavigationLink(destination: ExamSCORE()) {
                            SettingsButton(
                                title: "Edit Exam Score",
                                color: Color(red: 173/255, green: 216/255, blue: 230/255)
                            )
                        }
                        .buttonStyle(.plain)

                        NavigationLink(destination: GOAL()) {
                            SettingsButton(
                                title: "Edit Goals",
                                color: Color(red: 173/255, green: 216/255, blue: 250/255)
                            )
                        }
                        .buttonStyle(.plain)

                        NavigationLink(destination: ExamDATE()) {
                            SettingsButton(
                                title: "Edit Exam Date",
                                color: Color(red: 173/255, green: 200/255, blue: 250/255)
                            )
                        }
                        .buttonStyle(.plain)
                    }

                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 10)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SettingsButton: View {
    let title: String
    let color: Color

    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundStyle(.black)

            Spacer()

            Image(systemName: "chevron.right")
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(.black.opacity(0.7))
        }
        .padding(.horizontal, 18)
        .frame(maxWidth: .infinity)
        .frame(height: 58)
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(color)
        )
        .shadow(color: .black.opacity(0.10), radius: 6, x: 0, y: 3)
    }
}

#Preview {
    Settings()
}
