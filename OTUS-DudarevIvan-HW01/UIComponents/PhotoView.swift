//
//  PhotoView.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct PhotoView: View {
    
    @ObservedObject var photoViewModel: PhotoViewModel
    
    init(photoURL: String) {
        self.photoViewModel = PhotoViewModel()
        self.photoViewModel.fetchPhoto(for: photoURL)
    }
    
    var body: some View {
        Group {
            if photoViewModel.photo != nil {
                photoViewModel.photo!
                    .resizable()
                    .scaledToFit()
            } else {
                Image(systemName: "photo")
            }
        }
    }
}
