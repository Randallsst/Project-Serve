import SwiftUI

struct CreateDeckView: View {
    @ObservedObject var store: DeckStore
    @Environment(\.dismiss) private var dismiss

    @State private var title = ""
    @State private var description = ""
    @State private var cards: [Flashcard] = [Flashcard(term: "", definition: "")]

    var body: some View {
        NavigationStack {
            Form {
                Section("Deck Info") {
                    TextField("Title", text: $title)
                    TextField("Description (optional)", text: $description)
                }

                Section("Cards") {
                    ForEach($cards) { $card in
                        CardEditorRow(card: $card)
                    }
                    .onDelete { cards.remove(atOffsets: $0) }

                    Button {
                        cards.append(Flashcard(term: "", definition: ""))
                    } label: {
                        Label("Add Card", systemImage: "plus.circle")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("New Deck")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") { saveDeck() }
                        .bold()
                        .disabled(title.isEmpty || cards.allSatisfy { $0.term.isEmpty })
                }
            }
        }
    }

    private func saveDeck() {
        let filtered = cards.filter { !$0.term.isEmpty }
        let newDeck = Deck(title: title, description: description, cards: filtered)
        store.addDeck(newDeck)
        dismiss()
    }
}

struct CardEditorRow: View {
    @Binding var card: Flashcard

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            TextField("Term", text: $card.term)
                .font(.body.bold())

            Divider()

            TextField("Definition", text: $card.definition, axis: .vertical)
                .font(.body)
                .foregroundColor(.secondary)
                .lineLimit(2...4)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    CreateDeckView(store: DeckStore())
}

