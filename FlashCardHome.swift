import SwiftUI

struct FlashcardHomeView: View {
    @ObservedObject var store: DeckStore
    @State private var showingCreateDeck = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()

                if store.decks.isEmpty {
                    emptyStateView
                } else {
                    List {
                        ForEach(store.decks) { deck in
                            NavigationLink {
                                DeckDetailView(deck: deck, store: store)
                            } label: {
                                DeckRowView(deck: deck)
                            }
                            .listRowBackground(Color.white)
                            .listRowInsets(EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16))
                        }
                        .onDelete(perform: store.deleteDeck)
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("My Decks")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingCreateDeck = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            .sheet(isPresented: $showingCreateDeck) {
                CreateDeckView(store: store)
            }
        }
    }

    private var emptyStateView: some View {
        VStack(spacing: 16) {
            Image(systemName: "rectangle.stack.badge.plus")
                .font(.system(size: 64))
                .foregroundColor(.blue)

            Text("No decks yet")
                .font(.title2.bold())
                .foregroundColor(.primary)

            Text("Tap + to create your first flashcard deck")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            Button("Create Deck") {
                showingCreateDeck = true
            }
            .buttonStyle(PrimaryButtonStyle())
        }
        .padding()
    }
}

struct DeckRowView: View {
    let deck: Deck

    var body: some View {
        HStack(spacing: 14) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: "rectangle.on.rectangle")
                        .foregroundColor(.white)
                        .font(.title3)
                )

            VStack(alignment: .leading, spacing: 4) {
                Text(deck.title)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text("\(deck.cards.count) cards")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    FlashcardHomeView(store: DeckStore())
}
//Again thanks randall
