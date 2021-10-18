//
//  NewsHeaderPageView.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct NewsHeaderPageView: View {
    
    private let randomDummyArray = [10, 11, 12, 13, 14, 15, 16, 17]

    var body: some View {

        TabView {
            ForEach(randomDummyArray, id: \.self) { item in
                VStack {
                    Image("20\(item)")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    VStack(alignment: .leading) {
                        Text("News Heading here, it can be multiline. Try for two line here and see the result")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .lineLimit(2)
                        Text("1 day ago")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }//Amar ToDo: not able to change dot's possition
                    .padding(.horizontal, 8)
                }
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: PageIndexViewStyle.BackgroundDisplayMode.interactive))
        .background(
            Color(UIColor.secondarySystemBackground)
        )
        .frame(height: 280)
        
    }
}

struct NewsHeaderPageView_Previews: PreviewProvider {
    static var previews: some View {
        NewsHeaderPageView()
            .previewLayout(.fixed(width: 320, height: 320))
            .padding()
    }
}
