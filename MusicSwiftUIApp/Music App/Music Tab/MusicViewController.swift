//
//  MusicViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct MusicViewController: View {
    private let gridLayout: [GridItem] = [.init(.flexible()), .init(.flexible())]
    
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 16, content: {
                    MusicGridCellView()
                    MusicGridCellView()
                    
                    MusicGridCellView()
                    MusicGridCellView()
                    
                    MusicGridCellView()
                    MusicGridCellView()
                    
                    MusicGridCellView()
                    MusicGridCellView()
                    
                    MusicGridCellView()
                    MusicGridCellView()
                }) //: LazyVGrid
                .padding()
            }//: ScrollView
            .navigationBarTitleDisplayMode(.large)
            .navigationBarBackButtonHidden(true)
            //.navigationBarItems(leading: Text("Left"), trailing: Text("Right"))
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                        print("List button")
                    }, label: {
                        Text("List")
                    })
                    
                    Button(action: {
                        print("Grid button")
                    }, label: {
                        Text("Grid")
                    })
                } //: HStack
            )//: navigationBarItems //amar not working navigation items
    }
}

struct MusicViewController_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                MusicViewController()
            }
            MusicViewController()
                .preferredColorScheme(.dark)
        }
    }
}