//
//  ContentView.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 4/5/26.
//

import SwiftUI

struct HomeView: View {
    @State private var currentQuote = 0
    @StateObject private var deckStore = DeckStore()

    let quotes = [
        "SET YOUR HEART ABLAZE",
        "If you cant sacrifice something you cannot change anything",
        "The road ahead is never a straight one",
        "Study because of discipline, not motivation",
        "Never put off until tomorrow what can be done today",
        "If you want something bad enough, dont wish for it to happen, make it happen"
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .ignoresSafeArea()

                VStack(spacing: 18) {
                    Button {
                        currentQuote = (currentQuote + 1) % quotes.count
                    } label: {
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Quote of the Day")
                                .font(.headline)
                                .foregroundStyle(.black.opacity(0.75))

                            Text(quotes[currentQuote])
                                .font(.system(size: 24, weight: .semibold))
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.black)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                        .frame(height: 150)
                        .background(
                            RoundedRectangle(cornerRadius: 28, style: .continuous)
                                .fill(Color(red: 173/255, green: 216/255, blue: 230/255))
                        )
                        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)

                    HStack {
                        Spacer()

                        Button {
                        } label: {
                            VStack(spacing: 10) {
                                Text("Next exam in")
                                    .font(.headline)
                                    .foregroundStyle(.black.opacity(0.75))

                                Text(daysRemainingText())
                                    .font(.system(size: 34, weight: .bold))
                                    .foregroundStyle(.black)

                                Text("days")
                                    .font(.subheadline)
                                    .foregroundStyle(.black.opacity(0.7))
                                Text("Edit date in Settings tab")
                            }
                            .frame(width: 220, height: 200)
                            .background(
                                RoundedRectangle(cornerRadius: 28, style: .continuous)
                                    .fill(Color(red: 173/255, green: 216/255, blue: 230/255))
                            )
                            .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
                        }
                        .buttonStyle(.plain)
                        .padding(.trailing, 20)
                    }

                    Spacer(minLength: 0)
                }
            }
            .safeAreaInset(edge: .bottom) {
                HStack {
                    Spacer()

                    NavigationLink(destination: ExamTip()) {
                        Image(systemName: "lightbulb")
                            .font(.title2)
                            .foregroundStyle(.black)
                            .frame(width: 44, height: 44)
                    }

                    Spacer()

                    NavigationLink(destination: Study()) {
                        Image(systemName: "book")
                            .font(.title2)
                            .foregroundStyle(.black)
                            .frame(width: 44, height: 44)
                    }

                    Spacer()

                    NavigationLink(destination: FlashcardHomeView(store: deckStore)) {
                        Image(systemName: "square.stack")
                            .font(.title2)
                            .foregroundStyle(.black)
                            .frame(width: 44, height: 44)
                    }

                    Spacer()

                    NavigationLink(destination: Settings()) {
                        Image(systemName: "gearshape")
                            .font(.title2)
                            .foregroundStyle(.black)
                            .frame(width: 44, height: 44)
                    }

                    Spacer()
                }
                .padding(.vertical, 14)
                .background(.ultraThinMaterial)
                .overlay(Divider(), alignment: .top)
            }
        }
    }

    private func daysRemainingText() -> String {
        let savedDate = UserDefaults.standard.object(forKey: "examDate") as? Date

        guard let examDate = savedDate else {
            return "--"
        }

        let days = Calendar.current.dateComponents([.day], from: Date(), to: examDate).day ?? 0
        return days > 0 ? "\(days)" : "0"
    }
}

#Preview {
    HomeView()
}
