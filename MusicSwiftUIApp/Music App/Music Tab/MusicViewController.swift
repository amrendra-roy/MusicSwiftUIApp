//
//  MusicViewController.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct MusicViewController: View {
    //GridItem(.adaptive(minimum: 80))=> means we want the grid to fit in as many items per row as possible, using a minimum size of 80 points each.
    //If you wanted to control the number of columns you can use .flexible()
    @State private var gridLayout: [GridItem] = [.init(.flexible())]
    @State private var currentSelectedImage: String = "list.dash" //default selected
    @State private var collumnNumber = 1 //default collum 1 means list view layout
    
    func gridViewLayout() {
        gridLayout = Array(repeating: .init(.flexible()), count: collumnNumber)
    }
    
    var body: some View {
        NavigationView {
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
                .animation(.easeIn)
            }//: ScrollView
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("Music")
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                        print("List button")
                        currentSelectedImage = "list.dash"
                        collumnNumber = 1
                        gridViewLayout()
                    }, label: {
                        Image(systemName: "list.dash")
                            .foregroundColor(currentSelectedImage == "list.dash" ? .accentColor :.gray)
                    })
                    
                    Button(action: {
                        print("Grid button")
                        currentSelectedImage = "rectangle.grid.2x2"
                        collumnNumber = 2
                        gridViewLayout()
                    }, label: {
                        Image(systemName: "rectangle.grid.2x2")
                            .foregroundColor(
                                currentSelectedImage == "rectangle.grid.2x2" ? .accentColor : .gray
                            )
                    })
                } //: HStack
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
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
