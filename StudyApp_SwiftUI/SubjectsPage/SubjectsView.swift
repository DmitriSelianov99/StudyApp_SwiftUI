//
// SubjectsView.swift
// StudyApp_SwiftUI


import SwiftUI

struct SubjectsView: View {
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(foregroundColor: .white)
                
                Spacer()
                    .frame(height: 45)
                
                SubjectItemsView()
                
                Spacer()
            }
        }
        .background {
            Color.specialSubjectsBackground.ignoresSafeArea()
            Image("subjectsBG")
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    SubjectsView()
}

