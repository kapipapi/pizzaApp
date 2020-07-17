//
//  Ingredient.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import Foundation
import SwiftUI

class Ingredient: Equatable {
    
    static func == (lhs: Ingredient, rhs: Ingredient) -> Bool {
        lhs.id == rhs.id
    }
    
    enum IngredientType {
        case meat
        case vegetables
        case special
    }
    
    var id = UUID()
    var type: IngredientType
    var name: String
    var price: Float
    
    init(type: IngredientType, name: String, price: Float) {
        self.type = type
        self.name = name
        self.price = price
    }
    
    // vegetables
    static let ciasto = Ingredient(type: .vegetables, name: "dodatkowe ciasto", price: 3)
    static let ananas = Ingredient(type: .vegetables, name: "ananas", price: 3)
    static let brzoskwinia = Ingredient(type: .vegetables, name: "brzoskwinia", price: 3)
    static let oliwki = Ingredient(type: .vegetables, name: "oliwki", price: 3)
    static let papryka = Ingredient(type: .vegetables, name: "papryka", price: 3)
    static let papryka_ostra = Ingredient(type: .vegetables, name: "papryka ostra", price: 3)
    static let kapary = Ingredient(type: .vegetables, name: "kapary", price: 3)
    static let cebula = Ingredient(type: .vegetables, name: "cebula", price: 3)
    static let jajko = Ingredient(type: .vegetables, name: "jajko", price: 3)
    static let pieczarki = Ingredient(type: .vegetables, name: "pieczarki", price: 3)
    static let pomidor = Ingredient(type: .vegetables, name: "pomidor", price: 3)
    static let kukurydza = Ingredient(type: .vegetables, name: "kukurydza", price: 3)
    static let groszek = Ingredient(type: .vegetables, name: "groszek", price: 3)
    static let fasola = Ingredient(type: .vegetables, name: "fasola czerwona", price: 3)
    static let brokuly = Ingredient(type: .vegetables, name: "brokuły", price: 3)
    static let cebula_czerwona = Ingredient(type: .vegetables, name: "czerwona cebula", price: 3)
    static let czosnek = Ingredient(type: .vegetables, name: "czosnek świeży", price: 3)
    static let sos_czosnkowy = Ingredient(type: .vegetables, name: "sos czosnkowy", price: 3)
    static let sos_pomidorowy = Ingredient(type: .vegetables, name: "sos pomidorowy", price: 3)
    static let rukola = Ingredient(type: .vegetables, name: "rukola", price: 3)
    static let bazylia = Ingredient(type: .vegetables, name: "bazylia", price: 3)
    static let ogorek = Ingredient(type: .vegetables, name: "ogórek", price: 3)
    static let salata = Ingredient(type: .vegetables, name: "sałata", price: 3)
    
    // meat
    static let kurczak = Ingredient(type: .meat, name: "kurczak", price: 6)
    static let szynka = Ingredient(type: .meat, name: "szynka", price: 6)
    static let salami = Ingredient(type: .meat, name: "salami", price: 6)
    static let boczek = Ingredient(type: .meat, name: "boczek", price: 6)
    static let mielone = Ingredient(type: .meat, name: "mielone", price: 6)
    static let karczochy = Ingredient(type: .meat, name: "karczochy", price: 6)
    static let gyros = Ingredient(type: .meat, name: "gyros", price: 6)
    static let kielbasa = Ingredient(type: .meat, name: "kiełbasa", price: 6)
    
    // special
    static let ser = Ingredient(type: .special, name: "ser", price: 6)
    static let ser_plesniowy = Ingredient(type: .special, name: "ser pleśniowy", price: 6)
    static let fetta = Ingredient(type: .special, name: "fetta", price: 6)
    static let swieza_mozzarella = Ingredient(type: .special, name: "świeża mozzarella", price: 6)
    static let ser_zolty = Ingredient(type: .special, name: "ser żółty", price: 6)
    
    static let tunczyk = Ingredient(type: .special, name: "tuńczyk", price: 6)
    static let losos = Ingredient(type: .special, name: "łosoś", price: 6)
    static let owoce_morza = Ingredient(type: .special, name: "owoce morza", price: 6)
    static let krewetki = Ingredient(type: .special, name: "krewetki", price: 6)
    
    static let szynka_wloska = Ingredient(type: .special, name: "szynka włoska", price: 10)
    
    // diffrent
    static let smietana = Ingredient(type: .special, name: "śmietana", price: 0)
    static let nutella = Ingredient(type: .special, name: "nutella", price: 0)
}
