//
//  EditDishCellCheckBox.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 07/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct EditDishCellCheckBox: View {
    
    @EnvironmentObject var order: Order
    
    var dish: Dish
    var ingredient: Ingredient
    
    @State var checked = true
    
    var body: some View {
        HStack{
            Image(systemName: (self.checked ? "checkmark.circle" : "circle"))
                .padding()
            Text(ingredient.name)
            Spacer()
            Text(String(format: "%.2f", ingredient.price) + " zł")
                .padding()
        }
        .onTapGesture{self.toggle()}
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func toggle() {
        self.checked.toggle()
        if self.checked {
            self.order.addIngredientTo(dish: self.dish, ingredient: self.ingredient)
        } else {
            self.order.removeIngredientFrom(dish: self.dish, ingredient: self.ingredient)
        }
    }
}

struct EditDishCellCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        EditDishCellCheckBox(dish: LaCapraMenu.pizzas[0], ingredient: LaCapraMenu.pizzas[0].ingredients[1]).previewLayout(.fixed(width: 500, height: 50))
    }
}
