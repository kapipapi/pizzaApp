//
//  Dish.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 04/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import Foundation
import UIKit

class Dish: Equatable {
    
    static func == (lhs: Dish, rhs: Dish) -> Bool {
        lhs.id == rhs.id
    }
    
    enum DishType {
        case salad
        case pizza
        case pasta
    }
    
    var id = UUID()
    var type: DishType = .pizza
    var name: String = "Pizza"
    var dishImage: UIImage = UIImage(named: "margarita")!
    var ingredients: [Ingredient] = []
    var price: Float = 0
    var priceString: String {
        return String(format: "%.2f", self.price) + " zł"
    }
    var typeString: String {
        switch self.type {
        case .pizza:
            return "🍕"
        case .salad:
            return "🥗"
        case .pasta:
            return "🍝"
        }
    }
    
    init(type: DishType = DishType.pizza, name: String, dishImage: UIImage = UIImage(named: "margarita")!, price: Float = 10.00) {
        self.type = type
        self.name = name
        self.dishImage = dishImage
        self.price = price
    }
    
    init(type: DishType = DishType.pizza, name: String, dishImage: UIImage = UIImage(named: "margarita")!, price: Float = 10.00, ingredients: [Ingredient]) {
        self.type = type
        self.name = name
        self.dishImage = dishImage
        self.price = price
        self.ingredients = ingredients
    }
    
    init(type: DishType = DishType.pizza, name: String, dishImageString: String = "margarita", price: Float = 10.00) {
        self.type = type
        self.name = name
        self.dishImage = UIImage(named: dishImageString)!
        self.price = price
    }
    
    init(type: DishType = DishType.pizza, name: String, dishImageString: String = "margarita", price: Float = 10.00, ingredients: [Ingredient]) {
        self.type = type
        self.name = name
        self.dishImage = UIImage(named: dishImageString)!
        self.price = price
        self.ingredients = ingredients
    }
    
    func addIngredient(ingredient: Ingredient) {
        self.ingredients.append(ingredient)
    }
    
    func removeIngredient(ingredient: Ingredient) {
        if let index = self.ingredients.firstIndex(of: ingredient) {
            self.ingredients.remove(at: index)
        } else {
            fatalError("No such ingredient!")
        }
    }
    
}
