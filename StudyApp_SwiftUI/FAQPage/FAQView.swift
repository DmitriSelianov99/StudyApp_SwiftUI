//
// FAQView.swift
// StudyApp_SwiftUI


import SwiftUI

struct FAQView: View {
    
    @State var text: String = ""
    @State var selectedItem: Question?
    
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 0, alignment: .center),
                               GridItem(.flexible(), spacing: 0, alignment: .center)
    ]
    
    
    var body: some View {
        ZStack {
            Color.specialBackground.ignoresSafeArea()
            
            VStack {
                HeaderView(foregroundColor: .black)
                
                Text("Type your question below or click a picture and get answered in less than 30 minutes")
                    .font(.system(size: 16, weight: .regular))
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.horizontal, 18)
                    .padding(.top, 28)

                SearchTextField(text: $text)
                    .padding(.top, 22)
                
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
                .padding(.top, 22)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Frequently asked questions:")
                        .font(.system(size: 16, weight: .regular))
                        .padding(.leading, 18)
                    
                    List {
                        ForEach(QuestionData.data) { item in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                
                                HStack {
                                    Text(item.title)
                                        .font(.system(size: 12))
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                }
                            }
                            .sheet(item: $selectedItem, content: { item in
                                Text(item.title)
                            })
                            .onTapGesture(perform: {
                                selectedItem = item
                            })
                        }
                    }
                    .padding(.top, -20)
                    .scrollContentBackground(.hidden)
                    .environment(\.defaultMinListRowHeight, 64)
                    .listRowSpacing(10)
                    .scrollDisabled(true)
                }
                .padding(.top, 22)

            }
        }
    }
}


#Preview {
    FAQView()
}

struct SearchTextField: View {
    
    @Binding var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).stroke()
            HStack {
                TextField("Type your question...", text: $text)
                    .padding(.leading)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                
                Button {
                    print("search")
                } label: {
                    Image(systemName: "camera")
                        .foregroundStyle(.black)
                }
                .padding(.trailing)
            }
            
        }
        .frame(height: 60)
        .padding(.horizontal, 18)
    }
}
