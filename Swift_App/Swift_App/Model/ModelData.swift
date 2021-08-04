//
//  ModelData.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 03/08/2021.
//

import Foundation

//METTRE SURFSPOTS ici

//var landmarks: [SurfSpot] = load("Surfspots.json")
var surfspots: Result = load("Surfspots.json")

func load< Result : Decodable>(_ filename: String) -> Result {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

       do {
           data = try Data(contentsOf: file)
       } catch {
           fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
       }

       do {
        let results = try JSONDecoder().decode(Result.self, from: data)
        
        let listOfSpots = results.records
        
        return listOfSpots
        
       } catch {
           fatalError("Couldn't parse \(filename) as \(Result.self):\n\(error)")
       }
}
