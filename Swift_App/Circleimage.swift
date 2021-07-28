//
//  Circleimage.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 27/07/2021.
//

import SwiftUI

struct Circleimage: View {
    var body: some View {
        Image("wildwaves")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
        
    }
}

struct Circleimage_Previews: PreviewProvider {
    static var previews: some View {
        Circleimage()
    }
}
