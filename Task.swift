//
//  Task.swift
//  Chem app
//
//  Created by Lauren Ng Sze Min on 25/5/26.
//


import Foundation

struct Exam: Identifiable, Codable, Equatable{
    let id : UUID
    var title: String
    var category: String
    var dueDate: Date
    var isCompleted: Bool
    
    init(id: UUID = UUID(),
         title: String,
         category: String,
         dueDate: Date,
         isCompleted: Bool){
        self.id = id
        self.title = title
        self.category = category
        self.dueDate = dueDate
        self.isCompleted = isCompleted
    }
}
