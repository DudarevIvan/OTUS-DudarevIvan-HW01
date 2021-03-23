//
//  PhotoViewModel.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI
import Networking

class PhotoViewModel: ObservableObject {
    
    @Published var photo: Image = Image(systemName: "photo")
    
    var p: Image = Image(systemName: "photo") {
        didSet {
            self.photo = p
        }
    }
    
    func fetchPhoto(for url: String) {
        Networking.shared.loadImage(url) { (result: Result<Data, NetworkError>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    if let uiImage = UIImage(data: data) {
                        self.p = Image(uiImage: uiImage)
                    } else {
                        self.p = Image(systemName: "exclamationmark.icloud")
                    }
                }
            case.failure(let error):
                DispatchQueue.main.async {
                    print(error)
                }
            }
        }
    }
    
}
