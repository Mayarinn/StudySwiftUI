//
//  ProductItem.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/1/24.
//

import SwiftUI

struct ProductItem: View {
    
    var object: [ProductsResponse]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse)
    }
}
