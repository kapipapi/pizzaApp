//
//  BasketButton.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct BasketButton: View {
    
    @EnvironmentObject var order: Order
    
    @Binding var basketIsOpen: Bool
    
    var body: some View {
        GeometryReader { g in
            Button(action: {self.basketIsOpen.toggle()}) {
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(.black)
            }
            .frame(width: 50, height: 50)
            .background(Color.white)
            .cornerRadius(30)
            .position(x: g.size.width-50, y: 20)
            .shadow(radius: 5)
            
            Text(String(self.order.itemCount))
                .frame(width: 20, height: 20)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
                .position(x: g.size.width-50-20, y: 20+20)
        }
    }
}
