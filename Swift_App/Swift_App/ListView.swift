//
//  ListView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 28/07/2021.
//

import SwiftUI

struct ListView: View {
    
    var surfspots : [Surfspot] = [
        /*Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves", coordinates: Surfspot.Coordinates(longitude: -116.166868, latitude: 34.011286)),
        Surfspot(id: 2, name: "Palm Rocks", city: "Maui", country: "Hawai, USA", imageName: "palmrocks", coordinates: Surfspot.Coordinates(longitude: -156.331925, latitude: 20.798363)),
        Surfspot(id: 3, name: "Uluwatu", city: "Bali", country: "Indonesia", imageName: "uluwatu", coordinates: Surfspot.Coordinates(longitude: 115.188919, latitude: -8.409518))*/]
    

    var body: some View {
        NavigationView {
            List(surfspots, id: \.id) { elementOfSurfspots in
                NavigationLink(destination: SpotDetail(surfspot: elementOfSurfspots)) {
                    SpotRow(surfspot: elementOfSurfspots)
                }
            }
            .navigationTitle("Surfspots")
        }
    }
    

    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
