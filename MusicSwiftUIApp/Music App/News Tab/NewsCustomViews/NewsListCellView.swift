//
//  NewsListCellView.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct NewsListCellView: View {
    var body: some View {
        HStack(spacing: 8) {
            Image("2017")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 75, alignment: .center)
                .background(
                    Color.gray
                )
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Michael jackson interviews Morgan Bullock")
                    .fontWeight(.bold)
                    .font(.headline)
                    .foregroundColor(.accentColor)

                
                Text("In 1964, Michael and Marlon joined the Jackson Brothers—a band formed by their father which included Jackie, Tito, and Jermaine—as backup musicians playing congas and tambourine.[19][20] Michael said his father told him he had a \"fat nose\",[21] and physically and emotionally abused him during rehearsals.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .lineLimit(4)
                    .multilineTextAlignment(.leading)
            } //: VStack
        } //: HStack
    }
}

struct NewsListCellView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCellView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
