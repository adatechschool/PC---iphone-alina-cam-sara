//
//  ContentView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var surfspot1 = Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves")
    
    var body: some View {
        ListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
