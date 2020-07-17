//
//  Basket.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI
import Combine

struct Basket: View {
    
    @EnvironmentObject var order: Order
    @State private var editMode = EditMode.inactive
    
    @State var editDish = LaCapraMenu.pizzas[0]
    @State var editDishSheet = false
    
    var body: some View {
        VStack{
            Text("Koszyk")
                .font(.headline)
                .padding(.top, -10)
            if order.itemCount > 0 {
                GeometryReader{ g in
                    ZStack{
                        List{
                            ForEach(self.order.getDishes(), id: \.id) { dish in
                                BasketListCell(dish: dish)
                                    .onTapGesture {
                                        self.editDish = dish
                                        self.editDishSheet = true
                                    }
                            }
                            .onDelete(perform: self.order.remove)
                        }
                        HStack{
                            if self.editMode == EditMode.active {
                                Button(action: {self.editMode = EditMode.inactive}) {
                                    Text("OK")
                                        .foregroundColor(.white)
                                }
                                .frame(width: 2*g.size.width/3, height: 50, alignment: .center)
                                .background(Color.green)
                                .cornerRadius(10)
                            } else {
                                Button(action: {self.editMode = EditMode.active}) {
                                    Text("Edytuj")
                                        .foregroundColor(.white)
                                }
                                .frame(width: 3*g.size.width/8, height: 50, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(10)
                                
                                Button(action: {
                                    RestAPI().post(basket: self.order.getDishes())}) {
                                        Text("Zamów - "+self.order.totalString)
                                        .foregroundColor(.white)
                                }
                                .frame(width: 4*g.size.width/8, height: 50, alignment: .center)
                                .background(Color.green)
                                .cornerRadius(10)
                            }
                        }
                        .position(x: g.size.width/2, y: g.size.height-100)
                    }
                    .environment(\.editMode, self.$editMode)
                    .sheet(isPresented: self.$editDishSheet) {
                        EditDishSheet(isPresented: self.$editDishSheet, dish: self.editDish).environmentObject(self.order)
                    }
                }
            } else {
                Text("Koszyk jest pusty, dodaj produkty.")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .padding()
            }
        }
    }
}

//struct Basket_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//            BottomPanel(isOpen: .constant(true), maxHeight: 700) {
//                Basket()
//            }
//        }
//    }
//}
