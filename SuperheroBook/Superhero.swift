//
//  Superhero.swift
//  SuperheroBook
//
//  Created by Emirhan Zeyrek on 7.03.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superhero : Identifiable {
    var id = UUID()
    var name : String
    var realName : String
    var imageName : String
    var city : String
    var job : String
    var coordinate : coordinate
    var coordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct coordinate {
    var latitude : Double
    var longitude : Double
}

let batman = Superhero(name: "Batman",
                       realName: "Bruce Wayne",
                       imageName: "batman",
                       city: "Gotham City",
                       job: "Business Man",
                       coordinate: coordinate(latitude: 41.8713679, longitude: -87.7669902))

let superman = Superhero(name: "Superman",
                         realName: "Clark Kent",
                         imageName: "superman",
                         city: "Kansas",
                         job: "Journalist",
                         coordinate: coordinate(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = Superhero(name: "Spider-Man",
                          realName: "Peter Parker",
                          imageName: "spiderman",
                          city: "New York",
                          job: "Photography",
                          coordinate: coordinate(latitude: 40.7160119, longitude: -74.0524729))

let ironman = Superhero(name: "Iron Man",
                        realName: "Tony Stark",
                        imageName: "ironman",
                        city: "Los Angeles",
                        job: "Business Man",
                        coordinate: coordinate(latitude: 33.8003309, longitude: -118.2261494))

let superheroArrays = [batman, superman, spiderman, ironman]
