//
//  HMenuPanels.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 04/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct HMenuPanels: View {
    
    var title: String = "Pizza"
    var dishes: [Dish]?
    
    init(title: String, dishes: [Dish]) {
        self.title = title
        self.dishes = dishes
    }
    
    var body: some View {
        VStack{
            Text(title)
                .font(.title)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, -25)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(dishes!, id: \.id) { dish in
                        Panel(dish: dish)
                            .frame(width: 300)
                    }
                }
                .frame(height: 180, alignment: .leading)
            }
        }
    }
}

struct HMenuPanels_Previews: PreviewProvider {
    static var previews: some View {
        HMenuPanels(title: "Pizza", dishes: [Dish(name: "Margarita", dishImageString: "margarita")])
    }
}
