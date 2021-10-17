//
//  SearchViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct SearchViewController: View {
    var body: some View {
        NavigationView {
            Text("Search")
                .navigationBarTitle(Text("Search"))
        }
    }
}

struct SearchViewController_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewController()
    }
}
