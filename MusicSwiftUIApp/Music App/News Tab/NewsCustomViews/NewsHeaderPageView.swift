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
                Image("20\(item)")
                    .resizable()
                    .scaledToFit()
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
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
