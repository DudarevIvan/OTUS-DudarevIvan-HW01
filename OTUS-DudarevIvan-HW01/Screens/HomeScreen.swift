//
//  HomeScreen.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        Button(action: {
            router.tabSelection = 1
            router.randomPhotoIsActive = true
        }, label: {
            Text("Example photo")
                .padding(4)
                .foregroundColor(.black)
                .background(Color.gray.opacity(0.4))
                .font(.largeTitle)
                .cornerRadius(8)
        })
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
