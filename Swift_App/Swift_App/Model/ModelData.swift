//
//  ModelData.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 03/08/2021.
//

import Foundation

//var landmarks: [SurfSpot] = load("Surfspots.json")
var landmarks: Result = load("Surfspots.json")

func load<Result: Decodable>(_ filename: String) -> Result {
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
           let decoder = JSONDecoder()
           let results = try decoder.decode(Result.self, from: data)
        
           return results
        
       } catch {
           fatalError("Couldn't parse \(filename) as \(Result.self):\n\(error)")
       }
}
