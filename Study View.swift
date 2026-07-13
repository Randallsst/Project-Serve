import SwiftUI

struct StudyView: View {
    let deck: Deck
    @State private var currentIndex = 0
    @State private var flipDegrees = 0.0
    @State private var showFront = true
    @State private var offset: CGSize = .zero
    @State private var sessionComplete = false
    @Environment(\.dismiss) private var dismiss

    let frontCardColor: Color = .white
    let backCardColor: Color = Color(hex: "EEF4FF")
    let cardShadowColor: Color = .black.opacity(0.12)

    var currentCard: Flashcard { deck.cards[currentIndex] }

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground).ignoresSafeArea()

                VStack(spacing: 24) {
                    progressBar
                    cardCountLabel
                    flashcard
                    tapHint
                    Spacer()
                    navigationButtons
                }
                .padding()

                if sessionComplete {
                    completionOverlay
                }
            }
            .navigationTitle("Study")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("End") { dismiss() }
                }
            }
        }
    }

    private var progressBar: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 6)

                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.blue)
                    .frame(width: geo.size.width * CGFloat(currentIndex + 1) / CGFloat(deck.cards.count), height: 6)
                    .animation(.spring(), value: currentIndex)
            }
        }
        .frame(height: 6)
    }

    private var cardCountLabel: some View {
        Text("\(currentIndex + 1) / \(deck.cards.count)")
            .font(.subheadline.monospacedDigit())
            .foregroundColor(.secondary)
    }

    private var flashcard: some View {
        ZStack {
            cardFace(text: currentCard.term, label: "TERM", color: frontCardColor)
                .opacity(showFront ? 1 : 0)
                .rotation3DEffect(.degrees(flipDegrees), axis: (x: 0, y: 1, z: 0))

            cardFace(text: currentCard.definition, label: "DEFINITION", color: backCardColor)
                .opacity(showFront ? 0 : 1)
                .rotation3DEffect(.degrees(flipDegrees + 180), axis: (x: 0, y: 1, z: 0))
        }
        .offset(x: offset.width)
        .rotationEffect(.degrees(Double(offset.width / 20)))
        .gesture(
            DragGesture()
                .onChanged { offset = $0.translation }
                .onEnded { handleSwipe($0) }
        )
        .onTapGesture { flipCard() }
    }

    private func cardFace(text: String, label: String, color: Color) -> some View {
        VStack(spacing: 12) {
            Text(label)
                .font(.caption.bold())
                .foregroundColor(.secondary)
                .tracking(2)

            Spacer()

            Text(text)
                .font(.title2.weight(.medium))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 8)

            Spacer()
        }
        .padding(32)
        .frame(maxWidth: .infinity)
        .frame(height: 280)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
                .shadow(color: cardShadowColor, radius: 12, x: 0, y: 6)
        )
    }

    private var tapHint: some View {
        Label("Tap to flip", systemImage: "hand.tap")
            .font(.caption)
            .foregroundColor(.secondary)
    }

    private var navigationButtons: some View {
        HStack(spacing: 20) {
            StudyButton(icon: "xmark", color: .red, label: "Missed") {
                nextCard()
            }
            StudyButton(icon: "checkmark", color: .green, label: "Got it") {
                nextCard()
            }
        }
    }

    private var completionOverlay: some View {
        ZStack {
            Color.black.opacity(0.5).ignoresSafeArea()
            VStack(spacing: 20) {
                Image(systemName: "checkmark.seal.fill")
                    .font(.system(size: 64))
                    .foregroundColor(.yellow)

                Text("Deck Complete")
                    .font(.title.bold())
                    .foregroundColor(.white)

                Button("Study Again") {
                    currentIndex = 0
                    sessionComplete = false
                }
                .buttonStyle(PrimaryButtonStyle())

                Button("Exit") { dismiss() }
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding(40)
        }
    }

    private func flipCard() {
        let duration = 0.3
        withAnimation(.easeInOut(duration: duration / 2)) {
            flipDegrees += 90
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration / 2) {
            showFront.toggle()
            withAnimation(.easeInOut(duration: duration / 2)) {
                flipDegrees += 90
            }
        }
    }

    private func nextCard() {
        withAnimation(.spring()) { offset = .zero }
        if currentIndex < deck.cards.count - 1 {
            currentIndex += 1
            showFront = true
            flipDegrees = 0
        } else {
            sessionComplete = true
        }
    }

    private func handleSwipe(_ gesture: DragGesture.Value) {
        let threshold: CGFloat = 80
        if abs(gesture.translation.width) > threshold {
            nextCard()
        } else {
            withAnimation(.spring()) { offset = .zero }
        }
    }
}

struct StudyButton: View {
    let icon: String
    let color: Color
    let label: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 6) {
                Circle()
                    .fill(color.opacity(0.15))
                    .frame(width: 64, height: 64)
                    .overlay(
                        Image(systemName: icon)
                            .font(.title2.bold())
                            .foregroundColor(color)
                    )

                Text(label)
                    .font(.caption.bold())
                    .foregroundColor(color)
            }
        }
    }
}

#Preview {
    StudyView(deck: Deck(title: "Sample", description: "", cards: [
        Flashcard(term: "Hello", definition: "A greeting"),
        Flashcard(term: "World", definition: "The earth")
    ]))
}
