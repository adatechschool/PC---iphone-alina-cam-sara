//
//  ListView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 28/07/2021.
//

import SwiftUI

struct ListView: View {
    var surfspot1 = Surfspots(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA")
    // a faire : changer surfspot1 en liste de surfspots (en tableau) + chercher comment déclarer une liste
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            Circleimage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(surfspot1.name)
                    .padding()
                    .font(.title)
                HStack {
                    Text(surfspot1.city)
                    Spacer()
                    Text(surfspot1.country)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
            }
            .padding()
            
            Spacer()
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}



var body: some View {
        
    }
}
