//
//  SurfSpots.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import Foundation
import SwiftUI
import CoreLocation


func readFile() {
          let url = Bundle.main.url(forResource: "Surfspots", withExtension: "json")
          let data = try? Data(contentsOf: url) {
          let decoder = JSONDecoder()
          let results = try! decoder.decode(bigObjectWithListOfSpots.self, from: data)
        }
}

struct bigObjectWithListOfSpots: Codable {
  var elementsOfBigObject: [Surfspot]
}

struct Surfspot : Identifiable, Codable {
    var id: Int
    var name: String
    var city: String
    //var country: String
    
    /*var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }*/

    enum CodingKeys: String, CodingKey {
          case name = "Surf Name"
          case city = "Address"
      }
}
