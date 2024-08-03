//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

var categories: [String: [ProductsResponse]] {
    .init(grouping: materialResponse, by: {$0.category.rawValue})
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Cell(user: swiftbook).listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(), id:\.self) { key in
                    ProductRow(categoryName: key, objects: categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                NavigationLink("Teachers", destination: FriendsList())
            }
            
            .navigationTitle("Homepage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
