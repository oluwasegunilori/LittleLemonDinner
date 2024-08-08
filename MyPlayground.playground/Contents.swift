import UIKit

protocol MenuItemProtocol {
    var id : UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: Menu {get}
    var orders: Int {set get}
    var priceInt: Int {set get}
    var ingredient: [Ingredient] {set get}
}


enum Ingredient : String, CaseIterable {
    case Spinach = "Spinach"
    case Broccoli = "Brocolli"
    case Carrot = "Carrot"
    case Pasta = "Pasta"
    case TomatoSauce = "Tomato Sauce"
}
enum Menu: String {
    case Food = "Food"
    case Drink = "Drink"
    case Dessert = "Dessert"
}

struct MenuItem : Identifiable, MenuItemProtocol {
    let id: UUID = UUID()
        
    var price: Double
    
    var title: String
    
    var menuCategory: Menu
    
    var orders: Int
    
    var priceInt: Int
    
    var ingredient: [Ingredient]
    
    
}


func generateRandomMenuItems(count: Int) -> [MenuItem] {
    let titles = ["Milk", "Juice", "Smoothie"]
   
    let ingredients: [Ingredient] = Ingredient.allCases
    
    var menuItems: [MenuItem] = []
    
    for _ in 0..<count {
        let title = titles.randomElement()!
        let price = Double.random(in: 5...30)
        let category = Menu.Drink
        let orders = Int.random(in: 1...100)
        let priceInt = Int(price)
        let itemIngredients = (0..<3).map { _ in ingredients.randomElement()! }
        
        let menuItem = MenuItem(price: price, title: title, menuCategory: category, orders: orders, priceInt: priceInt, ingredient: itemIngredients)
        
        menuItems.append(menuItem)
    }
    
    return menuItems
}

print(generateRandomMenuItems(count: 8))
