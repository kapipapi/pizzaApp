//
//  SidePanel.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 07/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct SidePanel<Content: View>: View {
    
    var content: Content
    @Binding var isOpen: Bool
    
    init(isOpen: Binding<Bool>, @ViewBuilder content: () -> Content) {
        self._isOpen = isOpen
        self.content = content()
    }
    
    var body: some View {
        GeometryReader{ g in
            ZStack{
                self.content
                Button(action: {self.isOpen.toggle()}) {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.black)
                }
                .frame(width: 50, height: 50)
                .background(Color.white)
                .cornerRadius(30)
                .position(x: g.size.width-50, y: 20)
                .shadow(radius: 5)
            }
            .frame(width: g.size.width, height: g.size.height, alignment: .center)
            .rotation3DEffect(self.isOpen ? .degrees(0) : .degrees(30.0), axis: (x: 0, y: 1, z: 0))
            .offset(x: self.isOpen ? 0 : -g.size.width-10)
            .animation(.easeInOut(duration: 0.3))
        }
    }
}
