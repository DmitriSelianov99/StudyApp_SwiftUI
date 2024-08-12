//
// ContentView.swift
// StudyApp_SwiftUI


import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 0, alignment: .center),
                               GridItem(.flexible(), spacing: 0, alignment: .center)
    ]
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(foregroundColor: .black)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text("Hi User,")
                                .font(.system(size: 26, weight: .bold, design: .default))
                            
                            HStack {
                                Text("You have")
                                Text("\(MockData.test.count) pending tests")
                                    .foregroundStyle(.red)
                                Text("this week")
                                Spacer()
                            }
                            .font(.system(size: 16, weight: .medium, design: .default))
                            
                        }
                        .padding(.leading, 18)
                        .frame(maxWidth: .infinity)
                        
                        Spacer()
                            .frame(height: 16)
                        
                        PointView()
                        
                        Spacer()
                            .frame(height: 28)
                        
                        HStack() {
                            Text("\(MockData.test.count) Pending tests")
                                .font(.system(size: 18, weight: .medium, design: .default))
                            Image(systemName: "exclamationmark.circle")
                                .font(.system(size: 18))
                                .foregroundStyle(.red)
                        }
                        .padding(.leading, 18)
                        
                        PendingTestView()
                        
                        Spacer()
                            .frame(height: 28)
                        
                        VStack(alignment: .leading) {
                            Text("Subjects")
                                .font(.system(size: 18, weight: .medium, design: .default))
                                .padding(.leading, 18)
                            
                            LazyVGrid(columns: columns, spacing: 10, content: {
                                ForEach(SubjectsData.subjects, id: \.id) { subject in
                                    Text(subject.name)
                                        .font(.system(size: 18, weight: .medium, design: .default))
                                        .foregroundStyle(.white)
                                        .padding(20)
                                        .frame(width: 172, height: 62, alignment: .center)
                                        .background(
                                            LinearGradient(
                                                colors: [subject.firstColor, subject.secondColor],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)
                                        )
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                }
                                
                            })
                            .padding(.horizontal, 10)
                            .padding(.bottom, 15)
                            
                        }
                    }
                }
                .ignoresSafeArea()
            }
            .padding(.bottom, 5)
        }
        .background(.specialBackground)
            
    }
        
}

#Preview {
    ContentView()
}

