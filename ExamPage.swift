//
//  ExamPage.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 25/5/26.
//

import SwiftUI

struct ExamPage: View {
    @Binding var exam: Exam
    let now = Date()
    let categories = ["Chemistry","Mathematics","Biology","Physics","Language","Applied Subject","Humanities"]
    var body: some View {
        ZStack {
            Color(red: 0.67, green: 0.80, blue: 0.40)
                .ignoresSafeArea()

            Form {
                Section("exam info") {
                    TextField("Title", text: $exam.title)
                        .fontWeight(.bold)

                    Picker("Category", selection: $exam.category) {
                        ForEach(categories, id: \.self) { c in
                            Text(c).tag(c)
                        }
                    }

                    DatePicker("Due date", selection: $exam.dueDate, displayedComponents: .date)
                        .fontWeight(.bold)

                    Toggle("Completed", isOn: $exam.isCompleted)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    ExamPage(exam: .constant(Exam(
        title: "Math HW",
        category: "School",
        dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!,
        isCompleted: true
    )))
}
