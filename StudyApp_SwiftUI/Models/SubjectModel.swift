//
// SubjectModel.swift
// StudyApp_SwiftUI


import Foundation
import SwiftUI

struct Subject: Hashable {
    let id = UUID()
    let name: String
    let firstColor: Color
    let secondColor: Color
    let number: Int
}

struct SubjectsData {
    static let subjects = [
        Subject(name: "Mathematics", firstColor: .math1, secondColor: .math2, number: 1),
        Subject(name: "Physics", firstColor: .phys1, secondColor: .phys2, number: 2),
        Subject(name: "Chemistry", firstColor: .chem1, secondColor: .chem2, number: 3),
        Subject(name: "Reasoning", firstColor: .reas1, secondColor: .reas2, number: 4)
    ]
}
