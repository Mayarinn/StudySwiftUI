//
//  Cell.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            TopView()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
