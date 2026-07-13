//
//  ExamTip.swift
//  test
//
//  Created by Lauren Ng Sze Min on 4/7/26.
//

import SwiftUI

struct ExamTip: View {
    var body: some View {
        
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    Text("Exam Tips :)")
                        .font(.title)
                        .fontWeight(.bold)

                    TipSection(
                        title: "Mindset",
                        tips: [
                            "Exam preparation is a process, not a race.       ",
                            "If you can only do one thing, then hone it to the best of your ability.",
                            "Effort must be consistent. Practice must be done consistently to make progress."
                        ]
                    )
                    TipSection(
                        title: "If you know the concept well and understand it:",
                        tips: [
                            "Practice active recall.                                         ",
                            "Use spaced repetition",
                            "Do past-year papers"
                        ]
                    )
                    TipSection(
                        title: "If you DO NOT understand the concept well:",
                        tips: [
                            "Revise more on that chapter                                         ",
                            "Do not blindly memorise; Understanding is key",
                            "Ask people for help (E.g. Teachers, AI, friends, etc.)"
                        ]
                    )

                    TipSection(
                        title: "After Practice",
                        tips: [
                            "Learn from the answer key explanations        ",
                            "Ask for help when in doubt",
                            "Accept feedback from others",
                            "Review your weak areas                                                     "
                        ]
                    )
                    TipSection(
                        title: "Study methods",
                        tips: [
                            "Feynman Technique: Teach someone the concept. If you can teach it with ease, you are good to go !       ",
                            "Place sticky notes with prompts such as 'What is an atom' on doors or switches and answer the question before opening the door/switch.",
                            "Relate things in everyday life to science concepts. (E.g. See a tree, think of photosynthesis and the chemical formula for glucose)",
                        
                            
                            """
                                    Study how the answers in the answer keys are formatted, such as the keywords and how they phrase/order the explanations
                                    """
                        ]
                    )
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }


struct TipSection: View {
    let title: String
    let tips: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)

            VStack(alignment: .leading, spacing: 8) {
                ForEach(tips, id: \.self) { tip in
                    Text("• \(tip)")
                }
            }
            .font(.callout)
        }
        .padding()
        .background(Color(red: 173 / 255, green: 216 / 255, blue: 230 / 255)
)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    ExamTip()
}
