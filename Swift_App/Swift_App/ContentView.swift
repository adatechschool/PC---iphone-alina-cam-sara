//
//  ContentView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    var surfspot1 = Surfspots(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA")
    
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
