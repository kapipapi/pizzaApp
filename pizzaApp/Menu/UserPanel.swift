//
//  UserPanel.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 07/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct UserPanel: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                Text(order.getUserFullName())
                .padding()
            }
        }
        .padding(.top, 150)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.offWhite)
        .edgesIgnoringSafeArea(.all)
    }
}
