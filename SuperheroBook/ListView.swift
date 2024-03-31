//
//  ContentView.swift
//  SuperheroBook
//
//  Created by Emirhan Zeyrek on 7.03.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(superheroArrays) { superHero in
                NavigationLink(
                    destination: DetailView(chosenHero: superHero),
                    label: {
                        ListRowView(superHero: superHero)
                    }
                )
            }
            .navigationTitle(
                Text("Superhero Book")
            )
        }
    }
}

#Preview {
    ListView()
}
