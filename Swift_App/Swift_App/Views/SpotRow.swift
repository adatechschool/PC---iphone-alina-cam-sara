//
//  SpotRow.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 29/07/2021.
//

import SwiftUI
import URLImage

struct SpotRow: View {
    var surfspot: SurfSpot

    var body: some View {
        HStack {
            Text(surfspot.name)
                
            Spacer()
        }
        URLImage(surfspot.photoURL!) { image in image
            .resizable()
            .frame(width: 50, height: 50)
        }
        
    }
}

struct SpotRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SpotRow(surfspot: surfspots[0])
            SpotRow(surfspot: surfspots[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
    // le surfspot de la l28 est le même qu'à la l11
}
