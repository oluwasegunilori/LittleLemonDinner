//
//  ContentView.swift
//  LittleLemonDinner
//
//  Created by shegz on 07/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Menu")
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    ContentView()
}
