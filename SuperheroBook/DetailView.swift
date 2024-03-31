//
//  DetailView.swift
//  SuperheroBook
//
//  Created by Emirhan Zeyrek on 9.03.2024.
//

import SwiftUI

struct DetailView: View {
    var chosenHero : Superhero
    var body: some View {
        VStack {
            MapView(coordinate: chosenHero.coordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            SpecialImageView(image: Image(chosenHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9,
                       height: UIScreen.main.bounds.height * 0.3,
                       alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.25)
                .padding(.bottom, UIScreen.main.bounds.height * -0.001)
            VStack {
                HStack{
                    Text(chosenHero.name)
                        .font(.largeTitle)
                        .foregroundColor(.purple)
                    Spacer()
                    Text(chosenHero.realName)
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                }
                HStack {
                    Text(chosenHero.city)
                        .bold()
                    Spacer()
                    Text(chosenHero.job)
                        .bold()
                }
            }
            .padding()
            .offset(y: UIScreen.main.bounds.height * -0.30)
            Spacer()
        }
    }
}

#Preview {
    DetailView(chosenHero: batman)
}
