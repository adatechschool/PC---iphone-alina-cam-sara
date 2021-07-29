//
//  SurfSpots.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import Foundation
import SwiftUI

struct Surfspot : Hashable, Codable {
    var id: Int
    var name: String
    var city: String
    var country: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}

//
//        Spots(id: <#ObjectIdentifier#>, name: "Wild Waves", country: "California, USA", city: "Santa Barbara", image: "wildwaves" as NSObject),
//        Spots(id: <#ObjectIdentifier#>, name: "Palm Rock", country: "Hawai, USA", city: "Maui", image: "palmrocks" as NSObject),
//        Spots(id: <#ObjectIdentifier#>, name: "Uluwatu", country: "Indonesia", city: "Bali", image: "uluwatu" as NSObject)

