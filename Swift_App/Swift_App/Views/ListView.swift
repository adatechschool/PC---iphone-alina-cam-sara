//
//  ListView.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 28/07/2021.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationView {
            List(surfspots) { elementOfSurfspots in
                NavigationLink(destination: SpotDetail(surfspot: elementOfSurfspots)) {
                    SpotRow(surfspot: elementOfSurfspots)
                }
            }
            .navigationTitle("Surfspots")
        }
    }

    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            ListView()
        }
    }
}
