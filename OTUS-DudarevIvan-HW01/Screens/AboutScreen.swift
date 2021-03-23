//
//  AboutScreen.swift
//  OTUS-DudarevIvan-HW01
//
//  Created by Ivan Dudarev on 3/22/21.
//

import SwiftUI

struct AboutScreen: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "star")
                .font(Font.system(size: 100).weight(.thin))
            Spacer()
                .frame(height: 80)
            Button(action: {
                isPresented.toggle()
            }, label: {
                Text("More about NASA")
                    .font(Font.system(size: 30).weight(.regular))
                    .padding(5)
                    .background(Color.blue.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(4.0)
            })
            .sheet(isPresented: $isPresented, content: {
                ModalForAbout()
            })
        }
    }
}

struct AboutScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutScreen()
    }
}
