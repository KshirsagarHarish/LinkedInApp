//
//  HomeScreen.swift
//  LinkedInAPP
//
//  Created by Harish Kshirsagar on 10/09/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            ProfileAndPostView()
            PostView()
        }
       
    }
}

#Preview {
    HomeScreen()
}
