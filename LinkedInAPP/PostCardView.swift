//
//  PostCardView.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

struct SocialView {
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 1, image: "hand.thumbsup", title: "Like"),
    .init(ids: 2, image: "text.bubble", title: "Comment"),
    .init(ids: 3, image: "arrow.turn.up.right", title: "Like"),
    .init(ids: 4, image: "paperplane.fill", title: "send")
]

let samplePostData = PostModel(id: 1, image: "1", title: "Hitesh choaudhary", followers: 5, profileImage: "2", time: 8)

struct PostCardView: View {
    var data: PostModel
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
            HStack(alignment: .center) {
                Image(data.profileImage)
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 70, height: 70, alignment: .leading)
                    .padding(.horizontal)
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.title3)
                    Text("\(data.followers) followers")
                        .foregroundStyle(.gray)
                    Text("\(data.time)m")
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.horizontal)
            }
            Text("Looking for new course on iOS with swift UI, you are already at great plave")
                .padding(.horizontal)
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
