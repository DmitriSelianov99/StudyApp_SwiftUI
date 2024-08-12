//
// PendingTestView.swift
// StudyApp_SwiftUI


import SwiftUI

struct PendingTestView: View {
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 0, alignment: .center),
                               GridItem(.flexible(), spacing: 0, alignment: .center)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10, content: {
            ForEach(MockData.test, id: \.id) { test in
                VStack(alignment: .leading) {
                    Text(test.name)
                        .font(.system(size: 18, weight: .medium, design: .default))
                    
                    HStack {
                        Text(test.category)
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .foregroundStyle(test.color)
                            .padding(.vertical, 4)
                            .padding(.horizontal, 6)
                            .background(test.color.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 103))
                        
                        HStack(spacing: 2) {
                            Image(systemName: "clock")
                                .foregroundStyle(.red)
                            Text(test.time)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundStyle(.red)
                        }
                        
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width / 2.27)
                .padding(.vertical, 20)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 18))
            }
        })
        .padding(.horizontal, 10)
    }
}

#Preview {
    PendingTestView()
}
