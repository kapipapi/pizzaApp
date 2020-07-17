//
//  LaCapraMenu.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 05/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import Foundation
import SwiftUI

class LaCapraMenu {
    static let pizzas: [Dish] = [
        Dish(type: .pizza, name: "Margaritta", dishImageString: "margarita", price: 20, ingredients: [.sos_pomidorowy, .ser]),
        Dish(type: .pizza, name: "Con Fungi", dishImageString: "con_funghi", price: 23, ingredients: [.sos_pomidorowy, .ser, .pieczarki]),
        Dish(type: .pizza, name: "Con Mozzarella", dishImageString: "con_mozarella", price: 30, ingredients: [.sos_pomidorowy, .swieza_mozzarella, .bazylia, .pomidor]),
        Dish(type: .pizza, name: "Con Peperoni", dishImageString: "margarita", price: 29, ingredients: [.sos_pomidorowy, .ser, .papryka, .salami]),
        Dish(type: .pizza, name: "Vegetarian", dishImageString: "margarita", price: 32, ingredients: [.sos_pomidorowy, .swieza_mozzarella, .rukola, .brokuly, .cebula_czerwona]),
        Dish(type: .pizza, name: "Alle Olive", dishImageString: "margarita", price: 26, ingredients: [.sos_pomidorowy, .ser, .oliwki, .cebula]),
        Dish(type: .pizza, name: "Con Macinato", dishImageString: "margarita", price: 32, ingredients: [.sos_pomidorowy, .ser, .mielone, .cebula, .ogorek]),
        Dish(type: .pizza, name: "Con Salami e Olive", dishImageString: "margarita", price: 29, ingredients: [.sos_pomidorowy, .ser, .salami, .oliwki]),
        Dish(type: .pizza, name: "Al Bekon", dishImageString: "margarita", price: 29, ingredients: [.sos_pomidorowy, .ser, .boczek, .oliwki]),
        Dish(type: .pizza, name: "Con Presciutto", dishImageString: "margarita", price: 32, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .szynka, .oliwki]),
        Dish(type: .pizza, name: "Capriciosa", dishImageString: "margarita", price: 34, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .szynka, .oliwki, .jajko]),
        Dish(type: .pizza, name: "Quatro stagioni", dishImageString: "margarita", price: 35, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .szynka, .papryka, .oliwki]),
        Dish(type: .pizza, name: "Tricolore", dishImageString: "margarita", price: 31, ingredients: [.sos_pomidorowy, .ser, .tunczyk, .papryka]),
        Dish(type: .pizza, name: "Pazza", dishImageString: "margarita", price: 35, ingredients: [.sos_pomidorowy, .ser, .salami, .szynka, .oliwki]),
        Dish(type: .pizza, name: "Al Tonno", dishImageString: "margarita", price: 31, ingredients: [.sos_pomidorowy, .ser, .tunczyk, .cebula]),
        Dish(type: .pizza, name: "Al Salmone", dishImageString: "margarita", price: 34.5, ingredients: [.sos_pomidorowy, .ser, .smietana, .losos, .cebula, .kapary]),
        Dish(type: .pizza, name: "Frutti Di Mare", dishImageString: "margarita", price: 28, ingredients: [.sos_pomidorowy, .ser, .krewetki, .owoce_morza]),
        Dish(type: .pizza, name: "Dolce Pizza", dishImageString: "margarita", price: 22, ingredients: [.nutella]),
        Dish(type: .pizza, name: "Bianca con Becon", dishImageString: "margarita", price: 28.5, ingredients: [.ser, .boczek, .pomidor]),
        Dish(type: .pizza, name: "Fantasia", dishImageString: "margarita", price: 20, ingredients: [.sos_pomidorowy, .ser]),
        Dish(type: .pizza, name: "Calzone", dishImageString: "margarita", price: 30, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .szynka, .papryka, .cebula]),
        Dish(type: .pizza, name: "Hawajska", dishImageString: "margarita", price: 29, ingredients: [.sos_pomidorowy, .ser, .szynka, .ananas]),
        Dish(type: .pizza, name: "Farmerska", dishImageString: "margarita", price: 29, ingredients: [.sos_pomidorowy, .ser, .kurczak, .kukurydza]),
        Dish(type: .pizza, name: "Pizza Quatro Formagii", dishImageString: "margarita", price: 38.5, ingredients: [.sos_pomidorowy, .ser, .ser_plesniowy, .ser_zolty, .pomidor, .rukola]),
        Dish(type: .pizza, name: "Pizza Szefa", dishImageString: "margarita", price: 42, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .szynka_wloska, .ser_plesniowy, .oliwki, .karczochy, .jajko]),
        Dish(type: .pizza, name: "Pizza Wiosenna", dishImageString: "margarita", price: 38, ingredients: [.sos_czosnkowy, .ser, .cebula_czerwona, .boczek, .pomidor, .ogorek, .oliwki, .fetta, .salata]),
        Dish(type: .pizza, name: "Pizza Wiejska", dishImageString: "margarita", price: 35, ingredients: [.sos_pomidorowy, .ser, .pieczarki, .kielbasa, .cebula, .ogorek]),
        Dish(type: .pizza, name: "Pizza Gyros", dishImageString: "margarita", price: 35, ingredients: [.sos_czosnkowy, .ser, .gyros, .ogorek, .papryka, .fasola, .cebula_czerwona])
    ]
}
