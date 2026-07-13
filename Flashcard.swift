import Foundation

import Combine
import SwiftUI

struct Flashcard: Identifiable, Codable {
    var id = UUID()
    var term: String
    var definition: String
}

struct Deck: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var cards: [Flashcard]
    var createdAt: Date = Date()
}

class DeckStore: ObservableObject {
    @Published var decks: [Deck] = [] {
        didSet { save() }
    }

    init() { load() }

    private let saveKey = "flashcard_decks"

    func save() {
        if let encoded = try? JSONEncoder().encode(decks) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }

    func load() {
        if let data = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([Deck].self, from: data) {
            decks = decoded
        }
    }

    func addDeck(_ deck: Deck) {
        decks.append(deck)
    }

    func deleteDeck(at offsets: IndexSet) {
        decks.remove(atOffsets: offsets)
    }

    func updateDeck(_ deck: Deck) {
        if let index = decks.firstIndex(where: { $0.id == deck.id }) {
            decks[index] = deck
        }
    }
}

