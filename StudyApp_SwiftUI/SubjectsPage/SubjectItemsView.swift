//
// SubjectItemsView.swift
// StudyApp_SwiftUI


import SwiftUI

struct SubjectItemsView: View {
    
    @State var isAnimating: Bool = false
    
    private var backgroundArray: [String] = [
        "mathBG",
        "physBG",
        "chemBG",
        "reasBG",
    ]
    
    var body: some View {
        VStack(spacing: -26) {
            ForEach(SubjectsData.subjects, id: \.self) { item in
                let trailingPadding = CGFloat(64 + item.number * 20)
                let bgNumber = item.number - 1
                
                ZStack(alignment: .trailing) {
                    Rectangle()
                        .fill(
                            LinearGradient(
                                colors: [item.firstColor, item.secondColor],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .clipShape(
                            .rect(
                                bottomTrailingRadius: 25,
                                topTrailingRadius: 25
                            )
                        )
                    
                    Image("\(backgroundArray[bgNumber])")
                    Text(item.name)
                        .font(.system(size: 30, weight: .medium))
                        .foregroundStyle(.white)
                        .padding(.trailing, 30)
                }
                .frame(height: 164)
                .padding(.trailing, trailingPadding)
                .offset(x: isAnimating ? -10 : -300)
                .animation(.bouncy(duration: 0.5).delay(0.1 * Double(item.number)), value: isAnimating)

            }
            .onDisappear {
                isAnimating = false
            }
        }
        .onAppear {
            isAnimating = true
        }
        
    }
}


#Preview {
    SubjectItemsView()
}
