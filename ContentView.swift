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
                Text("Hello")
                Text("SwiftUI")
            }
            .navigationTitle("Fisrt Screen")
        }
        
        
            //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
