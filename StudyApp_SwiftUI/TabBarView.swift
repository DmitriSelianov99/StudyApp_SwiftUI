//
// TabBarView.swift
// StudyApp_SwiftUI


import SwiftUI

struct TabBarView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab,
                content:  {
            ContentView().tag(0)
            SubjectsView().tag(1)
            FAQView().tag(2)
        })
        .overlay(alignment: .bottom) {
            VStack {
                CustomTabView(index: $selectedTab)
                
            }
        }
    }
}

#Preview {
    TabBarView()
}


struct CustomTabView: View {
    
    private let iconsArray: [String] = [
        "house.fill",
        "book",
        "info.bubble"
    ]
    
    private let itemsNameArray: [String] = [
        "Home",
        "Subjects",
        "FAQ's"
    ]
    
    @Binding var index: Int
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(height: 65)
                .padding(.horizontal, 17)
            
            HStack(alignment: .bottom, spacing: 45) {
                
                ForEach(0..<3) { item in
                    Button(action: {
                        withAnimation(.bouncy) {
                            index = item
                            
                        }
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25.0)
                                .fill(index == item ? .specialActiveTabItem : .white)
                                .frame(width: 90, height: 48)
                            VStack {
                                Image(systemName: iconsArray[item])
                                Text(itemsNameArray[item])
                                    .font(.system(size: 10, weight: .regular))
                            }
                            .foregroundStyle(index == item ? .white : .specialTabItem)
                        }
                    })
                }
            }
        }
    }
}
