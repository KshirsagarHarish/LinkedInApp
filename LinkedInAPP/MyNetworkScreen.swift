//
//  MyNetworkScreen.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

let networkModelArray: [NetworkModel] = [
    .init(id: 1, name: "Lina", position: "SDE at Amazon", mutual: 100, image: "1"),
    .init(id: 2, name: "Reace", position: "Student at Oxford", mutual: 67, image: "2"),
    .init(id: 3, name: "Staurt", position: "Engineer at ANZ", mutual: 4, image: "3"),
    .init(id: 4, name: "Wei", position: "Senior consultant at Capgemini", mutual: 34, image: "4"),
    .init(id: 5, name: "Mayank", position: "Teach lead at Infosys", mutual: 98, image: "1")]

struct MyNetworkScreen: View {
    var body: some View {
        VStack {
            SearchBar()
            HStack {
                Text("Manage my network")
                    .font(.title3)
                    .foregroundStyle(.blue.opacity(0.8))
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.gray.opacity(0.3))
                .frame(height: 10)
            
            HStack {
                Text("Invitations")
                    .font(.title3)
                    .foregroundStyle(.blue.opacity(0.8))
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            Divider()
            ScrollView(.vertical) {
                ForEach(networkModelArray, id: \.id) { array in
                    ConnectionView(networkModel: array)
                    Divider()
                }
                
            }
        }
    }
}

#Preview {
    MyNetworkScreen()
}
