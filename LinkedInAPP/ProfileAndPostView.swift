//
//  ProfileAndPostView.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBar()
            Divider()
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Start a Post")
            }
            .padding(.horizontal)
            Divider()
            HStack {
                Image(systemName: "photo")
                    .foregroundStyle(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundStyle(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundStyle(.orange)
                Text("Event")
            }
            .padding()
        }
    }
}

#Preview {
    ProfileAndPostView()
}
