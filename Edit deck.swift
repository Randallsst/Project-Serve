import SwiftUI

struct EditDeckView: View {
    @State var deck: Deck
    @ObservedObject var store: DeckStore
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            Form {
                Section("Deck Info") {
                    TextField("Title", text: $deck.title)
                    TextField("Description (optional)", text: $deck.description)
                }

                Section("Cards") {
                    ForEach($deck.cards) { $card in
                        CardEditorRow(card: $card)
                    }
                    .onDelete { deck.cards.remove(atOffsets: $0) }

                    Button {
                        deck.cards.append(Flashcard(term: "", definition: ""))
                    } label: {
                        Label("Add Card", systemImage: "plus.circle")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("Edit Deck")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        store.updateDeck(deck)
                        dismiss()
                    }
                    .bold()
                    .disabled(deck.title.isEmpty)
                }
            }
        }
    }
}

#Preview {
    EditDeckView(deck: Deck(title: "Sample", description: "", cards: [
        Flashcard(term: "Hello", definition: "A greeting")
    ]), store: DeckStore())
}

