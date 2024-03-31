//
//  SpecialImageView.swift
//  SuperheroBook
//
//  Created by Emirhan Zeyrek on 9.03.2024.
//

import SwiftUI

struct SpecialImageView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.purple, lineWidth: 5)
                .shadow(radius: 15))
    }
}

#Preview {
    SpecialImageView(image: Image("batman"))
}
