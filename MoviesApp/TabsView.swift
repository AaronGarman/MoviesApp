//
//  TabsView.swift
//  MoviesApp
//
//  Created by Aaron Garman on 7/29/24.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            MoviesGridView()
                .tabItem {
                    Label("Theaters", systemImage: "movieclapper")
                }
            
            MoviesGridView() // will be favs list later
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
        }
    }
}

#Preview {
    TabsView()
}

// more space between icons and top?
// diff icons?
