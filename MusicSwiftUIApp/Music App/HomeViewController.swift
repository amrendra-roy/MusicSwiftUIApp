//
//  HomeViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct HomeViewController: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            MusicViewController()
                .tag(0)
                .tabItem {
                    Text("Music")
                    Image(systemName: "music.note.house")
                }
            
            NewsViewController()
                .tag(1)
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                    
                }
            
            SearchViewController()
                .tag(2)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    
                }
        } //: TabView
        .onAppear(perform: {
            UITabBar.appearance().barTintColor = .white
        })
        
    }
}

struct HomeViewController_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeViewController()
            HomeViewController()
                .preferredColorScheme(.dark)
        }
    }
}
