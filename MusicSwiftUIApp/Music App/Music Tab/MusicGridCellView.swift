//
//  MusicGridCellView.swift
//  MusicSwiftUIApp
//
//  Created by Amrendra on 16/10/21.
//

import SwiftUI

struct MusicGridCellView: View {
    
    var body: some View {
        VStack {
            Image("2013")
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            Text("Amrendra Rai")
                .foregroundColor(.accentColor)
                .fontWeight(.bold)
        }
    }
}

struct MusicGridCellView_Previews: PreviewProvider {
    static var previews: some View {
        MusicGridCellView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
