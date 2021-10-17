//
//  NewsViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct NewsViewController: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< 9) { item in
                            Button("Buton \(item)") {
                                print("action \(item)")
                            }
                        }
                    } //: HStack
                    .background(Color.black)
                    .frame(height: 55, alignment: .center)
                } //: ScrollView
                
                List {
                    NewsHeaderPageView()
                    
                    ForEach(8...19, id: \.self) { index in
                        NavigationLink(destination: NewsDetailViewController()) {
                            NewsListCellView()
                                .padding()
                        }
                    }
                } //: List
            } //: VStack
            .navigationBarTitle(Text("News"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NewsViewController_Previews: PreviewProvider {
    static var previews: some View {
        NewsViewController()
    }
}
