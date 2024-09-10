//
//  ContentView.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
           Image("2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 30)
                .clipShape(.circle)
            RoundedRectangle(cornerRadius: 5)
                .frame(width: .infinity, height: 30)
                .foregroundColor(.blue.opacity(0.2))
                .overlay {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .padding()
                    .font(.body)
                }
            
            Image(systemName: "ellipses.bubble.fill")
                .foregroundStyle(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .font(.title)

        }
        .padding(.top)
        
    }
}

#Preview {
    SearchBar()
}
