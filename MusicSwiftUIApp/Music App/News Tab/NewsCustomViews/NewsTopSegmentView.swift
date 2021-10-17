//
//  NewsTopSegmentView.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 17/10/21.
//

import SwiftUI

struct NewsTopSegmentView: View {
    private var gridLayout: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())] //Will set it once when API call done
    
    @State private var currentSelectedSegmentIndex = 0 //default 0th index
    
    var body: some View {
    
        ScrollView(.horizontal, showsIndicators: false) {
            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: 12) {
                HStack {
                    ForEach(0 ..< 15) { item in
                        Text("Index \(item)")
                        .font(.subheadline)
                        .fontWeight((currentSelectedSegmentIndex == item) ? .bold : .regular)
                        .tag(item)
                        .foregroundColor(.accentColor)
                        .frame(minWidth: 100, idealHeight: 55, alignment: .center)
                        .background(
                            Color(UIColor.secondarySystemBackground)
                                .frame(height: 28)
                                .cornerRadius(6)
                        )
                        .padding(.vertical, 8)
                        .background(
                            Color.accentColor
                                .frame(width: 50, height: (currentSelectedSegmentIndex == item) ? 4: 0, alignment: .center)
                                .offset(y: 18)//change distence from text
                        )
                        .onTapGesture(perform: {
                            print("Clicked button  = \(item)")
                            currentSelectedSegmentIndex = item
                        })
                    }
                }
            }
        }
        .padding(.horizontal, 8)
        
    }
}

struct NewsTopSegmentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NewsTopSegmentView()
                .previewLayout(.fixed(width: 460, height: 55))
                .padding()
            NewsTopSegmentView()
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 460, height: 55))
                .padding()
        }
    }
}
