//
//  SpotDetail.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 29/07/2021.
//

import SwiftUI

struct SpotDetail: View {
    var surfspot: Surfspot
    
    var body: some View {
        VStack {
            MapView(coordinate: surfspot.locationCoordinate)
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
            
            Spacer()

            }
    }
}

struct SpotDetail_Previews: PreviewProvider {
    static var previews: some View {
        SpotDetail()
    }
}
