//
//  ContentView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var surfspot1 = Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves", coordinates: Surfspot.Coordinates(longitude: -116.166868, latitude: 34.011286))
    
    var body: some View {
        ListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
