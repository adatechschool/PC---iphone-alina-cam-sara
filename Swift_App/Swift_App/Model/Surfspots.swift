//
//  SurfSpots.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import Foundation
import SwiftUI
import CoreLocation
import URLImage

 
struct Result: Decodable {
  var records: [SurfSpot] 
}

struct SurfSpot : Decodable {
    
    enum CodingKeys: String, CodingKey {
          case id = "id"
          case name = "Surf Break"
          case city = "City"
          case country = "Country"
          case picture = "Photos"
          case longitude = "Coordinates.longitude"
          case latitude = "Coordinates.latitude"
    }
    var id: Int
    var name: String
    var city: String
    var country: String
    var picture: String
    var photoURL: URL?
    var longitude: Double
    var latitude: Double
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.city = try container.decode(String.self, forKey: .city)
        self.country = try container.decode(String.self, forKey: .country)
        picture = try container.decode(String.self, forKey: .picture)
        self.photoURL = URL(string: picture)
        self.longitude = try container.decode(Double.self, forKey: .longitude)
        self.latitude = try container.decode(Double.self, forKey: .latitude)
      }
    
    public func encode(to encoder: Encoder) throws {
    }
}
