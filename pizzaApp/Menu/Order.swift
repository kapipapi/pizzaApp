//
//  Order.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import Foundation

class Order: ObservableObject {
    @Published var user = User()
    @Published var dishes = [Dish]()
    
    var itemCount: Int {
        return dishes.count
    }
    
    var total: Float {
        if dishes.count > 0 {
            return dishes.reduce(0) {$0 +
                $1.price
            }
        } else {
            return 0.0
        }
    }
    
    var totalString: String {
        return String(format: "%.2f", self.total) + " zł"
    }
    
    func add(dish: Dish) {
        dishes.append(dish)
    }
    
    func remove(at offsets: IndexSet) {
        dishes.remove(atOffsets: offsets)
    }
    
    func getDishes() -> [Dish] {
        return dishes
    }
    
    func addIngredientTo(dish: Dish, ingredient: Ingredient) {
        if let index = dishes.firstIndex(of: dish) {
            dishes[index].addIngredient(ingredient: ingredient)
        } else {
            fatalError("No such dish!")
        }
    }
    
    func removeIngredientFrom(dish: Dish, ingredient: Ingredient) {
        if let index = dishes.firstIndex(of: dish) {
            dishes[index].removeIngredient(ingredient: ingredient)
        } else {
            fatalError("No such dish!")
        }
    }
    
    func getUserFullName() -> String {
        return user.name + " " + user.surname
    }
    
    func getUserPhoto() -> URL {
        return user.photoUrl
    }
}
