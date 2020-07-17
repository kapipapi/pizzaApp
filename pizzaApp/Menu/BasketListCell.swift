//
//  BasketListCell.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct BasketListCell: View {
    
    var type: Dish.DishType
    var name: String
    var price: Float
    
    var image: String
    
    var body: some View {
        GeometryReader{ g in
            HStack {
                Text(self.image)
                    .frame(width: g.size.height, height: g.size.height)
                    .font(Font.system(size:  g.size.height/2))
                Text(self.name).padding()
                Spacer(minLength: 0)
                Text(String(format: "%.2f", self.price) + " zł")
                    .frame(width: g.size.height, height: g.size.height)
            }
        }
        .frame(height: 100)
    }
    
    init(dish: Dish) {
        self.type = dish.type
        self.name = dish.name
        self.price = dish.price
        self.image = dish.typeString
    }
}

struct BasketListCell_Previews: PreviewProvider {
    static var previews: some View {
        BasketListCell(dish: LaCapraMenu.pizzas[0]).previewLayout(.fixed(width: 400, height: 100))
    }
}
