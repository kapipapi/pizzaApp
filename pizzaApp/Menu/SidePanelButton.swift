//
//  SidePanelButton.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 07/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct SidePanelButton: View {
    
    @Binding var panelIsOpen: Bool
    
    var body: some View {
        GeometryReader { g in
            Button(action: {self.panelIsOpen.toggle()}) {
                Image(systemName: "sidebar.left")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(.black)
            }
            .frame(width: 50, height: 50)
            .background(Color.white)
            .cornerRadius(30)
            .position(x: 50, y: 20)
            .shadow(radius: 5)
        }
    }
}
