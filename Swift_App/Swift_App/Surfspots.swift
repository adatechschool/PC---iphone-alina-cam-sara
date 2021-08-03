//
//  SurfSpots.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import Foundation
import SwiftUI
import CoreLocation

 
struct Result: Decodable {
  var records: [SurfSpot]
}

struct SurfSpot : Decodable {
    
    enum CodingKeys: String, CodingKey {
          case name = "Surf Name"
          case address = "Address"
          //case imageName
          //case longitude
          //case latitude
          
        
      }
    
    var name: String
    var address: String

    /*var imageName: String
    var image: Image {
        Image(imageName)
    }*/
    
    /*var coordinates: Coordinates

    struct Coordinates: Codable {
        var longitude: Double
        var latitude: Double
}*/

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.address = try container.decode(String.self, forKey: .address)
        
        /*self.imageName = try container.decode(String.self, forKey: .imageName)
        self.latitude = try container.decode(Double.self, forKey: .latitude)
        self.longitude = try container.decode(Double.self, forKey: .longitude)*/
      }
    
    public func encode(to encoder: Encoder) throws {
    }
}
