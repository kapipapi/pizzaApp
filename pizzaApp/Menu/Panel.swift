//
//  Panel.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 04/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct Panel: View {
    
    @EnvironmentObject var order: Order
    
    var dish: Dish
    var title: String = "Test Title"
    var image: UIImage = UIImage(systemName: "photo")!
    
    @State var popupDish: Dish = LaCapraMenu.pizzas[0]
    @State var popupIsOpen: Bool = false
    
    init(dish: Dish) {
        self.dish = dish
        self.title = dish.name
        self.image = dish.dishImage
    }
    
    var body: some View {
        ZStack{
            Image(uiImage: image)
                .resizable()
                .cornerRadius(30)
                .shadow(radius: 5)
                .onTapGesture {
                    self.popupDish = self.dish
                    self.popupIsOpen.toggle()
                }

            VStack{
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
            .padding(.all, 10)
        }
        .padding(.all, 10)
        .sheet(isPresented: self.$popupIsOpen) {
            Popup(){
                DishPopupView(dish: self.popupDish, isOpen: self.$popupIsOpen).environmentObject(self.order)
            }
        }
    }
}

struct Panel_Previews: PreviewProvider {
    static var previews: some View {
        Panel(dish: Dish(name: "Margarita", dishImageString: "margarita"))
            .previewLayout(.fixed(width: 300, height: 170))
            
    }
}
