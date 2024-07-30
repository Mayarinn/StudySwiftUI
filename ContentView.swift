//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Cell()
                Cell()
            }
            .navigationTitle("Friends")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
