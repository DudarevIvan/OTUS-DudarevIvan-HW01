//
//  PhotoView.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct PhotoView: View {
    
    private let url: String
    
    init(for url: String) {
        self.url = url
    }
    
    var body: some View {
        NASAPhoto(photoViewModel: PhotoViewModel(for: url))
    }
}

struct NASAPhoto: View {
    
    @StateObject var photoViewModel: PhotoViewModel
    
    var body: some View {
        photoViewModel.photo
            .resizable()
            .scaledToFit()
    }
}
