//
//  DishPopupView.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct DishPopupView: View {
    
    @EnvironmentObject var order: Order
    @State var popupShow: Bool = false
    @Binding var isOpen: Bool
    
    var dish: Dish = LaCapraMenu.pizzas[0]
    
    init(dish: Dish, isOpen: Binding<Bool>) {
        self.dish = dish
        self._isOpen = isOpen
    }
    
    var body: some View {
        GeometryReader{ g in
            VStack{
                
                Spacer()
                
                Image(uiImage: self.dish.dishImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: g.size.width-50)
                    .cornerRadius(20)
                Text(self.dish.name)
                    .font(.largeTitle)
                Text(String(format: "%.2f", self.dish.price) + " zł")
                    .font(.caption)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Składniki:").font(.headline)
                    ForEach(self.dish.ingredients, id: \.id) { ingredient in
                        Text("• "+ingredient.name)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    self.popupShow.toggle()
                    self.order.dishes.append(self.dish)
                    self.isOpen.toggle()
                }) {
                    Text("Dodaj do koszyka")
                        .foregroundColor(.white)
                }
                .frame(width: 2*g.size.width/3, height: 50, alignment: .center)
                .background(Color.blue)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

struct DishPopupView_Previews: PreviewProvider {
    static var previews: some View {
        DishPopupView(dish: Dish(type: .pizza, name: "Margaritta", dishImageString: "margarita", price: 20), isOpen: .constant(false))
    }
}
