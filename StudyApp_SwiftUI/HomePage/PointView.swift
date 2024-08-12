//
// PointView.swift
// StudyApp_SwiftUI


import SwiftUI

struct PointView: View {
    var body: some View {
        ZStack {
            
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .firstTextBaseline) {
                        Text("300")
                            .font(.system(size: 40, weight: .bold))
                        Text("points")
                            .font(.system(size: 14, weight: .regular))
                    }
                    
                    Text("Cross 500 within the week to get a free One on One Class")
                        .font(.system(size: 14, weight: .regular))
                }
                //            .padding(.leading ,18)
                .foregroundStyle(.white)
                
                Button(action: {
                    
                }, label: {
                    Text("Take test now")
                        .font(.system(size: 14, weight: .medium))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.leading, 27)
                })
            }
            .padding(20)
        }
        .background(
            LinearGradient(
                colors: [
                    .gradientBlue,
                    .gradientPurple,
                    .gradientPink
                ],
                
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(18)
    }
}

