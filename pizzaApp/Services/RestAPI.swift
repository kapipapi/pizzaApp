//
//  RestAPI.swift
//  pizzaApp
//
//  Created by Kacper Ledwosiński on 06/04/2020.
//  Copyright © 2020 Kacper Ledwosiński. All rights reserved.
//

import Foundation

class APIData: Codable {
    var status: String
}

class RestAPI {
    
    func get() {
        guard let url = URL(string: "http://localhost:3000/order") else {
            fatalError("Invalid URL")
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            let posts = try? JSONDecoder().decode(APIData.self, from: data)
            DispatchQueue.main.async {
                print(posts!.status)
            }
        }.resume()
    }
    
    func post(basket: [Dish]) {
        
        var sum: Float = 0.0
        var order: [String: Any] = [:]
        
        for (index, dish) in basket.enumerated() {
            
            var ingredients = [String: String]()
            for (index, ingredient) in dish.ingredients.enumerated() {
                ingredients["ingredient_"+String(index)] = ingredient.name
            }
            
            let dish_object: [String: Any] = [
                "type": dish.typeString,
                "name": dish.name,
                "price": dish.price,
                "ingredients": ingredients
            ]
            
            order["dish_"+String(index)] = dish_object
            
            sum += dish.price
        }
        
        let data: [String: Any] = [
            "name": "Kacper Ledwosiński",
            "telephone": 882096886,
            "order": order,
            "total": sum,
            "date": Date().description
        ]

        let jsonData = try? JSONSerialization.data(withJSONObject: data)
        
        let url = URL(string: "http://192.168.0.107:3000/order")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.httpBody = jsonData
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }

        task.resume()
    }
    
}
