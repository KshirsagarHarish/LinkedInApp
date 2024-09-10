//
//  ConnectionView.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

struct ConnectionView: View {

    @State var networkModel: NetworkModel
    
    var body: some View {
            HStack {
                Image(networkModel.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(.circle)
                VStack(alignment: .leading) {
                    Text(networkModel.name)
                        .font(.title3)
                    Text(networkModel.position)
                        .foregroundStyle(.gray)
                    Text("\(networkModel.mutual) mutual connections")
                        .foregroundStyle(.gray.opacity(0.5))
                }
                .padding(.horizontal)
                
                Spacer()
                HStack {
                    Image(systemName: "multiply.circle")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 25, height: 25)
                        .aspectRatio(contentMode: .fit)
                }
            }
            .padding(.horizontal)
    }
}

#Preview {
    ConnectionView(networkModel: NetworkModel(id: 1, name: "Lina", position: "SDE at Amazon", mutual: 100, image: "1"))
}
