//
//  MenuItemsOptionView.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @ObservedObject var menuItemViewModel : MenuViewViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Button("Done") {
                    dismiss()
                }
            }.padding()
            HStack {
                Text("Filter")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Spacer()
                
            }.padding()
            
            Form {
                Section(header: Text("Selected Categories").font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.clear)) {
                        ForEach(Menu.allCases, id: \.self){item in
                            Text(item.rawValue)
                                .onTapGesture {
                                    menuItemViewModel.selectSortPreference(sortBy: item)
                                    dismiss()
                                    
                                }
                        }
                        
                    }
                
                Section(header: Text("Sort By").font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.clear)) {
                        Text("Most Popular")
                        Text("Price $-$$$")
                        Text("A-Z")
                    }
            }.padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
            
            
            Spacer()
        }.background(Color.clear)
    }
}

#Preview {
    MenuItemsOptionView(menuItemViewModel: MenuViewViewModel())
}
