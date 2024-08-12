//
// QuestionModel.swift
// StudyApp_SwiftUI


import SwiftUI

struct Question: Identifiable, Hashable {
    let id = UUID()
    let title: String
}

struct QuestionData {
    static let data: [Question] = [
        Question(title: "The average of first 50 natural numbers?"),
        Question(title: "The value of Pi?"),
        Question(title: "Value of Napier’s constant ‘e’ ?")
    ]
}
