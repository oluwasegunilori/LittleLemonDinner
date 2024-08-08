//
//  MenuItemProtocol.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import Foundation
protocol MenuItemProtocol {
    var id : UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: Menu {get}
    var orders: Int {set get}
    var priceInt: Int {set get}
    var ingredient: [Ingredient] {set get}
}
