import SwiftUI

struct DeckDetailView: View {
    let deck: Deck
    @ObservedObject var store: DeckStore
    @State private var showingStudy = false
    @State private var showingEdit = false

    var body: some View {
        List {
            Section {
                Button { showingStudy = true } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Ready to study?")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("\(deck.cards.count) cards")
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.8))
                        }
                        Spacer()
                        Image(systemName: "play.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(14)
                }
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
            }

            Section("All Cards") {
                ForEach(deck.cards) { card in
                    VStack(alignment: .leading, spacing: 6) {
                        Text(card.term)
                            .font(.subheadline.bold())
                        Text(card.definition)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
        }
        .navigationTitle(deck.title)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Edit") { showingEdit = true }
            }
        }
        .fullScreenCover(isPresented: $showingStudy) {
            StudyView(deck: deck)
        }
        .sheet(isPresented: $showingEdit) {
            EditDeckView(deck: deck, store: store)
        }
    }
}

#Preview {
    DeckDetailView(deck: Deck(title: "Sample", description: "", cards: [
        Flashcard(term: "Hello", definition: "A greeting"),
        Flashcard(term: "World", definition: "The earth")
    ]), store: DeckStore())
}
