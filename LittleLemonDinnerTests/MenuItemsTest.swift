//
//  MenuItemsTest.swift
//  LittleLemonDinnerTests
//
//  Created by shegz on 07/08/2024.
//

import XCTest
@testable import LittleLemonDinner

final class MenuItemsTest: XCTestCase {

    func test_initializeMenuItem_Title() {
        let menu: MenuItem = MenuItem(price: 2.3, title: "Food 1", menuCategory: Menu.Dessert, orders: 3, priceInt: 30, ingredient: [])
        XCTAssertEqual(menu.title, "Food 1")
    }

}
