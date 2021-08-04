//
//  ModelData.swift
//  Swift_App
//
//  Created by Sara Bevilacqua on 03/08/2021.
//

import Foundation

//METTRE SURFSPOTS ici

//var landmarks: [SurfSpot] = load("Surfspots.json")
var surfspots: [SurfSpot] = load("Surfspots.json")
//argument : titre
func load (_ filename: String) -> [SurfSpot] {
    
//T de template : fonction recoit objet n'importe le type juste décodable
// retourne ce type T (-> T)
//<T : Decodable>(_ filename: String) -> T {
// !!!! confusion entre Result == T et vrai Result
//maintenant ça n'est plus une fonction template, maintenant cette fonction marche
//juste avec un type : tableau de Surfspots
    
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
        let results: Result = try JSONDecoder().decode(Result.self, from: data)
        return results.records
        
       } catch {
           fatalError("Couldn't parse \(filename) as \(Result.self):\n\(error)")
       }
}
