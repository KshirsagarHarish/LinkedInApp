//
//  PostView.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

let postModelArray: [PostModel] = [
    .init(id: 1, image: "1", title: "Apple", followers: 89, profileImage: "2", time: 2),
    .init(id: 2, image: "2", title: "Microsoft", followers: 67, profileImage: "3", time: 7),
    .init(id: 3, image: "3", title: "Infosys", followers: 4, profileImage: "4", time: 5),
    .init(id: 4, image: "4", title: "Capgemini", followers: 56, profileImage: "1", time: 4),
    .init(id: 5, image: "1", title: "TCS", followers: 6, profileImage: "2", time: 3)
]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center) {
                ForEach(postModelArray, id: \.id) { data in
                    PostCardView(data: data)
                    HStack(alignment: .center, spacing: 45) {
                        ForEach(socialView, id: \.ids) { data in
                            VStack {
                                    Image(systemName: data.image)
                                    Text("\(data.title)")
                            }
                            .foregroundStyle(.black.opacity(0.8))
                            .font(.subheadline)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    PostView()
}
