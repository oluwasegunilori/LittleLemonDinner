//
//  MenuViewViewModel.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import Foundation
import Combine

class MenuViewViewModel : ObservableObject {
    @Published var sortBy: Menu?
    let desertMenuItems = dessertMenuItemsData
    let drinkMenuItems = drinkMenuItemsData
    let foodMenuItems = foodMenuItemsData
    
    func selectSortPreference(sortBy: Menu) {
        if self.sortBy == sortBy {
            self.sortBy = nil
            return
        }
        self.sortBy = sortBy
    }
}
