//
//  SurfSpots.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Surfspot : Hashable, Codable {
    var id: Int
    var name: String
    var city: String
    var country: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }

}

