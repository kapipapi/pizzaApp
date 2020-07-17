//
//  Popup.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import SwiftUI

struct Popup<Content: View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        GeometryReader{ g in
            self.content
            .background(Color(.secondarySystemBackground))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Popup_Previews: PreviewProvider {
    static var previews: some View {
        Popup() {
            Text("test")
        }
    }
}
