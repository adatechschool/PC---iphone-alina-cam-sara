//
//  SpotRow.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 29/07/2021.
//

import SwiftUI

struct SpotRow: View {
    var surfspot: Surfspot

    var body: some View {
        HStack {
            surfspot.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(surfspot.name)
            
            Spacer()
        }
        
    }
}

struct SpotRow_Previews: PreviewProvider {
    static var previews: some View {
        SpotRow(surfspot: Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves"))
    }
    // le surfspot de la l28 est le même qu'à la l11
}
