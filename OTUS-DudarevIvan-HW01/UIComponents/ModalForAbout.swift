//
//  ModalForAbout.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct ModalForAbout: View {
    
    let aboutNasa: String = """
            This is a public api NASA.
            The public key is registered to Ivan Dudarev.
            You can make no more than 1000 requests per day.
        """
    var body: some View {
        Text(aboutNasa)
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct ModalForAbout_Previews: PreviewProvider {
    static var previews: some View {
        ModalForAbout()
    }
}
