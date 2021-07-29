//
//  ListView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 28/07/2021.
//

import SwiftUI

struct ListView: View {
    
    var surfspots : [Surfspot] = [
        Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves"),
        Surfspot(id: 2, name: "Palm Rocks", city: "Maui", country: "Hawai, USA", imageName: "palmrocks"),
        Surfspot(id: 3, name: "Uluwatu", city: "Bali", country: "Indonesia", imageName: "uluwatu")]  // a faire : changer surfspot1 en liste de surfspots (en tableau) + chercher comment déclarer une liste
    var body: some View {
        List(surfspots, id: \.id) { elementOfSurfspots in
            SpotRow(surfspot: elementOfSurfspots)
            
        }
    }

    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
