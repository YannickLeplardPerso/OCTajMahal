//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel: Int, CaseIterable {
    case light = 1
    case medium = 2
    case hot = 3
}

// Représente l'objet "plat", qui figure sur la carte du menu
// l'uuid permet d'être conforme au protocole Identifiable, et deonc de parcourir une liste de plats
struct Dish: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: Double
}
