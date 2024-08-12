//
// HeaderView.swift
// StudyApp_SwiftUI


import SwiftUI

struct HeaderView: View {
    
    @State var foregroundColor: Color
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "text.alignleft")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "bell")
            })
            
            Circle()
                .fill(.green)
                .frame(width: 35)
        }
        .foregroundStyle(foregroundColor)
        .padding(.horizontal, 18)
    }
}

#Preview {
    HeaderView(foregroundColor: .black)
}
