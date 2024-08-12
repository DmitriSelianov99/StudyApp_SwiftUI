//
// PendindTestModel.swift
// StudyApp_SwiftUI


import Foundation
import SwiftUI



struct PendindTestModel: Hashable {
    let id = UUID()
    let name: String
    let category: String
    let time: String
    let color: Color
}

struct MockData {
    static let test = [
        PendindTestModel(name: "Law of Motion", category: "Physics", time: "1d:10Hr", color: .testPink),
        PendindTestModel(name: "Law of Motion", category: "Chemistry", time: "1d:10Hr", color: .testOrange),
        PendindTestModel(name: "Law of Motion", category: "Maths", time: "1d:10Hr", color: .testBlue),
        PendindTestModel(name: "Law of Motion", category: "Physics", time: "1d:10Hr", color: .testPink),
    ]
}
