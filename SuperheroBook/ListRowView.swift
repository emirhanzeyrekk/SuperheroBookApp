//
//  ListRowView.swift
//  SuperheroBook
//
//  Created by Emirhan Zeyrek on 9.03.2024.
//

import SwiftUI

struct ListRowView: View {
    var superHero : Superhero
    var body: some View {
        HStack {
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.purple, 
                            lineWidth: 2)
                    .shadow(radius: 10))
                .frame(width: 100,
                       height: 100,
                       alignment: .leading)
            Spacer()
            VStack {
                Text(superHero.name)
                    .font(.title)
                    .foregroundColor(.purple)
                    .bold()
                Text(superHero.realName)
                    .font(.title)
                    .foregroundColor(.orange)
            }
            Spacer()
        }
    }
}

#Preview {
    ListRowView(superHero: batman)
}
