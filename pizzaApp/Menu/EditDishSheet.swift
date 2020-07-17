//
//  EditDishSheet.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 07/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct EditDishSheet: View {
    
    @State private var editMode = EditMode.inactive
    @Binding var isPresented: Bool
    
    let dish: Dish
    
    var body: some View {
        ZStack{
            VStack{
                Text(dish.name)
                    .font(.largeTitle)
                VStack{
                    ForEach(dish.ingredients, id: \.id) { ingredient in
                        EditDishCellCheckBox(dish: self.dish, ingredient: ingredient)
                    }
                }
            }
            .environment(\.editMode, self.$editMode)
            GeometryReader{ g in
                HStack{
                    Button(action: {print("add ingredient")}) {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Button(action: {self.isPresented = false}) {
                        Text("Akceptuj")
                            .foregroundColor(.white)
                    }
                    .frame(width: 2*g.size.width/3, height: 50, alignment: .center)
                    .background(Color.green)
                    .cornerRadius(10)
                }
                .position(x: g.size.width/2, y: g.size.height-100)
            }
        }
    }
}
