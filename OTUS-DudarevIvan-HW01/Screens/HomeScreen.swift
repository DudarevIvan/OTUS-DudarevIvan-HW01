//
//  HomeScreen.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var router: Router
    //@EnvironmentObject var nasaData: NASAViewModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                Spacer().frame(height: geometry.size.height * 0.6)
                Button(action: {
                    router.tabSelection = 1
                    router.randomPhotoIsActive = true
                }, label: {
                    Text("View first photo")
                        .padding(4)
                        .foregroundColor(.white)
                        .background(Color.gray.opacity(0.4))
                        .font(Font.system(size: min(geometry.size.width, geometry.size.height) * 0.08))
                        .cornerRadius(8)
                })
            }
        }.ignoresSafeArea(edges: .top)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
