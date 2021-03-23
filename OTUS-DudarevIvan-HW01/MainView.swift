//
//  MainView.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        TabView(selection: $router.tabSelection) {
            HomeScreen()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
                .tag(0)
            NASAScreen()
                .tabItem {
                    Text("Photo")
                    Image(systemName: "camera")
                }
                .tag(1)
            AboutScreen()
                .tabItem {
                    Text("About")
                    Image(systemName: "note")
                }
                .tag(2)
        }
    }
}
