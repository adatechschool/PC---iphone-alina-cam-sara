//
//  SpotDetail.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 29/07/2021.
//

import SwiftUI
import CoreLocation
import URLImage

struct SpotDetail: View {
    var surfspot: SurfSpot
    
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(latitude: surfspot.latitude, longitude: surfspot.longitude)
                )

            MapView(coordinate: <#CLLocationCoordinate2D#>)
                .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
            
            Circleimage(image: surfspot.photoURL)
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
        SpotDetail(surfspot: surfspots[0])
    }
}
