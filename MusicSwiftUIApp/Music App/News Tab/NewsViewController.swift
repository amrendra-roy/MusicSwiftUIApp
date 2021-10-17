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
                NewsTopSegmentView() //Top segment for Stories type
                
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
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewsViewController_Previews: PreviewProvider {
    static var previews: some View {
        NewsViewController()
    }
}
