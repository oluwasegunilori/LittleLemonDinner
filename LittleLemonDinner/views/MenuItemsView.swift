//
//  MenuItemsView.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import SwiftUI

struct MenuItemsView: View {
    @StateObject var menuViewModel = MenuViewViewModel()
    @State private var showBottomDrawer = false
    
    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 15) {
                    
                    if menuViewModel.sortBy == nil || menuViewModel.sortBy == Menu.Food {
                        Section(header: HStack {
                            VStack(alignment: .leading) {
                                HStack {
                                    
                                    Text(Menu.Food.rawValue)
                                        .font(.title2)
                                        .fontWeight(.medium)
                                    Spacer()
                                }
                            }
                            Spacer()
                        }
                                
                        ) {
                            ForEach(menuViewModel.foodMenuItems, id: \.id) { foodMenu in
                                NavigationLink(destination: MenuItemDetailsView(menuItem: foodMenu)){
                                    VStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.black)
                                                .frame(maxWidth: .infinity, minHeight: 100)
                                                .background(Color.blue)
                                                .cornerRadius(10)
                                            Text("$ \(String(format: "%.2f", foodMenu.price))")
                                        }.foregroundColor(.white)
                                        Text(foodMenu.title)
                                    }
                                }
                            }
                        }
                    }
                    
                    if menuViewModel.sortBy == nil || menuViewModel.sortBy == Menu.Drink {
                        
                        Section(header: HStack {
                            Text(Menu.Drink.rawValue)
                                .font(.title2)
                                .fontWeight(.medium)
                            Spacer()
                        }
                                
                        ) {
                            ForEach(menuViewModel.drinkMenuItems, id: \.id) { drinkMenu in
                                NavigationLink(destination: MenuItemDetailsView(menuItem: drinkMenu)){ VStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.black)
                                            .frame(maxWidth: .infinity, minHeight: 100)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                        Text("$ \(String(format: "%.2f", drinkMenu.price))")
                                    }.foregroundColor(.white)
                                    Text(drinkMenu.title)
                                }
                                }
                            }
                        }
                    }
                    
                    if menuViewModel.sortBy == nil || menuViewModel.sortBy == Menu.Dessert {
                        
                        Section(header: HStack {
                            Text(Menu.Dessert.rawValue)
                                .font(.title2)
                                .fontWeight(.medium)
                            Spacer()
                        }
                                
                        ) {
                            ForEach(menuViewModel.desertMenuItems, id: \.id) { dessertMenu in
                                NavigationLink(destination: MenuItemDetailsView(menuItem: dessertMenu)){VStack {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.black)
                                            .frame(maxWidth: .infinity, minHeight: 100)
                                            .background(Color.blue)
                                            .cornerRadius(10)
                                        Text("$ \(String(format: "%.2f", dessertMenu.price))")
                                    }.foregroundColor(.white)
                                    Text(dessertMenu.title)
                                }
                                }
                            }
                        }
                    }
                }.padding()
                    .background(Color.white) // Background color of the card
                    .cornerRadius(5) // Rounded corners
                    .shadow(color: .gray.opacity(0.3), radius: 3, x: 0, y: 5) // Shadow for elevation
                    .padding()
            }.navigationTitle("Menu")
                .sheet(isPresented: $showBottomDrawer) {
                    MenuItemsOptionView(menuItemViewModel: menuViewModel)
                }
                .navigationBarItems(trailing:
                                        Button(action: {
                    showBottomDrawer = true
                }){
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 30, height: 25)
                        .overlay(
                            VStack(spacing: 6) {
                                Circle()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(.white)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.blue, lineWidth: 1.5)
                                    )
                                    .offset(x: 5, y: 3)
                                Circle()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(.white)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.blue, lineWidth: 1.5)
                                    ).offset(x:-5)
                                Circle()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(.white)
                                    .overlay(
                                        Circle()
                                            .stroke(Color.blue, lineWidth: 1.5),
                                        alignment: .center
                                    )
                                    .offset(x: 5, y: -3)
                            }
                                .foregroundColor(.blue) // Set color if needed
                        ).foregroundColor(.blue)
                }
                )
        }
    }
}


#Preview {
    MenuItemsView()
}
