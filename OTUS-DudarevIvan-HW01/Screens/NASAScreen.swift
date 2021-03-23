//
//  NASAScreen.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct NASAScreen: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @EnvironmentObject var router: Router
    @State var isAnimating: Bool = true
        
    var body: some View {
        NavigationView {
            Group {
                if listViewModel.list != nil {
                    List(listViewModel.list!.photos) { photo in
                        NavigationLink(
                            destination: PhotoView(photoURL: photo.imgSrc),
                            label: {
                                PhotoCell(photo: photo)
                            })
                    }
                    .overlay(NavigationLink(destination: PhotoView(photoURL: (listViewModel.list?.photos.randomElement()!.imgSrc)!), isActive: $router.randomPhotoIsActive) {
                        EmptyView().hidden()
                    })
                } else {
                    ActivityIndicator(isAnimating: $isAnimating, style: .large)
                }
            }
            .navigationTitle("Mars Rover Photos")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

