//
//  MenuItemDetailsView.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var menuItem: MenuItem
    var body: some View {
            GeometryReader { geometry in
                VStack {
                    
                    Image("litlemlog")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width,height: geometry.size.height*0.55)
                        .clipped()
                    
                                 Spacer()
                    
                    MenuDetailsView(title: "Price:", subtitle: String(menuItem.price))
                    MenuDetailsView(title: "Ordered:", subtitle: String(menuItem.orders))
                    MenuDetailsView(title: "Ingredients:", subtitle: menuItem.ingredient.reduce(""){
                        (result, next) in
                        return "\(result)\(next.rawValue)\n"
                    })
                    Spacer(minLength: 50)
                }
            }.navigationTitle(menuItem.title)
    }
}

#Preview {
    MenuItemDetailsView(menuItem: MenuItem(price: 2.45, title: "Any", menuCategory: Menu.Dessert, orders: 3, priceInt: 40, ingredient: [Ingredient.Broccoli, Ingredient.Carrot, Ingredient.Pasta]))
}

struct MenuDetailsView: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .font(.headline)
                .bold()
            Text(subtitle).font(.subheadline)
                .multilineTextAlignment(.center)
        }
    }
}
