//
//  PhotoCell.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI
import Networking

struct PhotoCell: View {
        
    var photo: Photo
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Rover: \(photo.rover.name.rawValue)")
                Text("Date: \(photo.earthDate)")
            }
            Text(photo.camera.fullName.rawValue).bold()
        }
    }
}
