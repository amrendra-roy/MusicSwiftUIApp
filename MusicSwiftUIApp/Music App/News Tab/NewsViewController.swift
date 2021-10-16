//
//  NewsViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct NewsViewController: View {
    var body: some View {
        List {
            ForEach(1...14, id: \.self) { index in
                NavigationLink(destination: NewsDetailViewController()) {
                    NewsListCellView()
                        .padding()
                }
            }
        }
        .navigationTitle(Text("News List"))
    }
}

struct NewsViewController_Previews: PreviewProvider {
    static var previews: some View {
        NewsViewController()
    }
}
