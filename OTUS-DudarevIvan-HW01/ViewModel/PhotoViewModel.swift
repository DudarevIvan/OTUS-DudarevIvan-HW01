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
    
    init(for url: String) {
        fetchPhoto(for: url)
    }
    
    func fetchPhoto(for url: String) {
        Networking.shared.loadImage(url) { (result: Result<Data, NetworkError>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    if let uiImage = UIImage(data: data) {
                        self.photo = Image(uiImage: uiImage)
                    } else {
                        self.photo = Image(systemName: "exclamationmark.icloud")
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
