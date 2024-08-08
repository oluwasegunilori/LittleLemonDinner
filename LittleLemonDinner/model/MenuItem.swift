//
//  MenuItem.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import Foundation
struct MenuItem : Identifiable, MenuItemProtocol {
    let id: UUID = UUID()
        
    var price: Double
    
    var title: String
    
    var menuCategory: Menu
    
    var orders: Int
    
    var priceInt: Int
    
    var ingredient: [Ingredient]
    
    
}


let foodMenuItemsData = [MenuItem(price: 20.38764291910409, title: "Sushi", menuCategory: Menu.Food, orders: 7, priceInt: 20, ingredient: [Ingredient.Carrot, Ingredient.Broccoli, Ingredient.TomatoSauce]), MenuItem( price: 16.5624858003495, title: "Steak", menuCategory: Menu.Food, orders: 16, priceInt: 16, ingredient: [Ingredient.Spinach, Ingredient.Carrot, Ingredient.Broccoli]), MenuItem( price: 10.262663098523767, title: "Tacos", menuCategory: Menu.Food, orders: 54, priceInt: 10, ingredient: [Ingredient.Spinach, Ingredient.Carrot, Ingredient.TomatoSauce]), MenuItem( price: 24.728327020046134, title: "Cake", menuCategory: Menu.Food, orders: 75, priceInt: 24, ingredient: [Ingredient.Broccoli, Ingredient.Spinach, Ingredient.Carrot]), MenuItem(price: 17.272786457323832, title: "Burger", menuCategory: Menu.Food, orders: 2, priceInt: 17, ingredient: [Ingredient.Carrot, Ingredient.Broccoli, Ingredient.Pasta]), MenuItem(price: 7.894190041976296, title: "Ice Cream", menuCategory: Menu.Food, orders: 26, priceInt: 7, ingredient: [Ingredient.Pasta, Ingredient.Carrot, Ingredient.TomatoSauce]), MenuItem(price: 22.975438091082655, title: "Steak", menuCategory: Menu.Food, orders: 92, priceInt: 22, ingredient: [Ingredient.Pasta, Ingredient.Spinach, Ingredient.Carrot]), MenuItem(price: 5.060924059192987, title: "Spaghetti", menuCategory: Menu.Food, orders: 63, priceInt: 5, ingredient: [Ingredient.Carrot, Ingredient.Carrot, Ingredient.Carrot]), MenuItem(price: 14.792108223917209, title: "Salad", menuCategory: Menu.Food, orders: 71, priceInt: 14, ingredient: [Ingredient.Carrot, Ingredient.Pasta, Ingredient.TomatoSauce]), MenuItem(price: 5.370792202704565, title: "Sushi", menuCategory: Menu.Food, orders: 24, priceInt: 5, ingredient: [Ingredient.Spinach, Ingredient.Spinach, Ingredient.TomatoSauce]), MenuItem(price: 24.640653342191435, title: "Spaghetti", menuCategory: Menu.Food, orders: 26, priceInt: 24, ingredient: [Ingredient.Spinach, Ingredient.TomatoSauce, Ingredient.Broccoli]), MenuItem(price: 23.69415981963275, title: "Pizza", menuCategory: Menu.Food, orders: 16, priceInt: 23, ingredient: [Ingredient.Carrot, Ingredient.Spinach, Ingredient.Carrot])]

let drinkMenuItemsData = [MenuItem( price: 26.069423084638927, title: "Milk", menuCategory: Menu.Drink, orders: 82, priceInt: 26, ingredient: [Ingredient.Carrot, Ingredient.Carrot, Ingredient.Spinach]), MenuItem(price: 9.136135387710352, title: "Smoothie", menuCategory: Menu.Drink, orders: 17, priceInt: 9, ingredient: [Ingredient.Pasta, Ingredient.Pasta, Ingredient.TomatoSauce]), MenuItem(price: 17.041014615447892, title: "Smoothie", menuCategory: Menu.Drink, orders: 9, priceInt: 17, ingredient: [Ingredient.Broccoli, Ingredient.Pasta, Ingredient.Broccoli]), MenuItem(price: 26.986229246889, title: "Milk", menuCategory: Menu.Drink, orders: 49, priceInt: 26, ingredient: [Ingredient.Broccoli, Ingredient.Broccoli, Ingredient.Spinach]), MenuItem(price: 22.232959992877777, title: "Milk", menuCategory: Menu.Drink, orders: 27, priceInt: 22, ingredient: [Ingredient.Pasta, Ingredient.Spinach, Ingredient.TomatoSauce]), MenuItem(price: 23.365402894244937, title: "Milk", menuCategory: Menu.Drink, orders: 94, priceInt: 23, ingredient: [Ingredient.Carrot, Ingredient.Spinach, Ingredient.Pasta]), MenuItem(price: 24.716136766869937, title: "Juice", menuCategory: Menu.Drink, orders: 73, priceInt: 24, ingredient: [Ingredient.Carrot, Ingredient.Spinach, Ingredient.Pasta]), MenuItem( price: 8.814062586608372, title: "Juice", menuCategory: Menu.Drink, orders: 42, priceInt: 8, ingredient: [Ingredient.Pasta, Ingredient.Carrot, Ingredient.Spinach])]

let dessertMenuItemsData = [MenuItem( price: 26.069423084638927, title: "Cheesecake", menuCategory: Menu.Drink, orders: 82, priceInt: 26, ingredient: [Ingredient.Carrot, Ingredient.Carrot, Ingredient.Spinach]), MenuItem(price: 9.136135387710352, title: "Puddings", menuCategory: Menu.Drink, orders: 17, priceInt: 9, ingredient: [Ingredient.Pasta, Ingredient.Pasta, Ingredient.TomatoSauce]), MenuItem(price: 17.041014615447892, title: "Tiramisu", menuCategory: Menu.Drink, orders: 9, priceInt: 17, ingredient: [Ingredient.Broccoli, Ingredient.Pasta, Ingredient.Broccoli]), MenuItem(price: 26.986229246889, title: "Gelatin", menuCategory: Menu.Drink, orders: 49, priceInt: 26, ingredient: [Ingredient.Broccoli, Ingredient.Broccoli, Ingredient.Spinach]),]

