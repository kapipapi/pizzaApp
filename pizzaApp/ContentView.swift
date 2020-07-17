//
//  ContentView.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 04/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var panelIsOpen: Bool = false
    @State var basketIsOpen: Bool = false
    
    var basketCount: Int = 0
    
    var bestsellers: [Dish] = [
        LaCapraMenu.pizzas[0],
        LaCapraMenu.pizzas[1],
        LaCapraMenu.pizzas[2]
    ]
    
    var salads: [Dish] = [
        Dish(type: .salad, name: "di Pollo", dishImageString: "salad_chicken", price: 25),
        Dish(type: .salad, name: "di Tonno", dishImageString: "salad_tuna", price: 25),
        Dish(type: .salad, name: "di Salmone", dishImageString: "salad_salmon", price: 25)
    ]
    
    var body: some View {
        ZStack(alignment: .top){
            SidePanelButton(panelIsOpen: $panelIsOpen)
            BasketButton(basketIsOpen: $basketIsOpen)
            VStack {
                Text("La Capra")
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                HMenuPanels(title: "Dziś polecamy!", dishes: bestsellers)
                HMenuPanels(title: "Może sałatkę?", dishes: salads)
            }
            BottomPanel(isOpen: $basketIsOpen, maxHeight: 700) {
                Basket()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 20)
            SidePanel(isOpen: $panelIsOpen) {
                UserPanel()
            }
        }
    }
}
