//
//  MapView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.241_943, longitude: -119.889_999),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
