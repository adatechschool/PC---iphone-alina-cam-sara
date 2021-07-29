//
//  SpotDetail.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 29/07/2021.
//

import SwiftUI
import CoreLocation

struct SpotDetail: View {
    var surfspot: Surfspot
    
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(latitude: surfspot.coordinates.latitude, longitude: surfspot.coordinates.longitude)
                )
                .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
            
            Circleimage(image: surfspot.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(surfspot.name)
                    .padding()
                    .font(.title)
                HStack {
                    Text(surfspot.city)
                    Spacer()
                    Text(surfspot.country)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
            }
            .padding()
            
            }
        .navigationTitle(surfspot.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpotDetail(surfspot: Surfspot(id: 1, name: "Wild Waves", city: "Santa Barbara", country: "California, USA", imageName: "wildwaves", coordinates: Surfspot.Coordinates(longitude: -116.166868, latitude: 34.011286)))
    }
}
