//
//  PhotoView.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct PhotoView: View {
    
    @ObservedObject var photoViewModel: PhotoViewModel = .init()
    let photoURL: String
    
    var body: some View {
        photoViewModel.photo
            .resizable()
            .scaledToFit()
            .onAppear() {
                self.photoViewModel.fetchPhoto(for: photoURL)
            }
    }
    
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photoURL: "")
    }
}
