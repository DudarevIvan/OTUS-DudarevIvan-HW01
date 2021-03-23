//
//  OTUS_DudarevIvan_HW01App.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

@main
struct OTUS_DudarevIvan_HW01App: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(Router())
                .environmentObject(ListViewModel())
                //.environmentObject(PhotoViewModel())
        }
    }
}
