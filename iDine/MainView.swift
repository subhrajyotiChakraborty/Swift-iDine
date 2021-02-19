//
//  MainView.swift
//  iDine
//
//  Created by Subhrajyoti Chakraborty on 18/02/21.
//

import SwiftUI

struct MainView: View {
    @StateObject var fav = Fav()
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .environmentObject(fav)
            OrderView()
                .tabItem { Label("Order", systemImage: "square.and.pencil") }
            FavView()
                .tabItem {
                    Label("Fav", systemImage: "heart")
                }
                .environmentObject(fav)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
