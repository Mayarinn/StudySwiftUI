//
//  ProductRow.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/1/24.
//

import SwiftUI

struct ProductRow: View {
    
    var categoryName: String
    var item: [ProductsResponse]
    
    var body: some View {
        Text(categoryName).font(.headline)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, item: Array(materialResponse.prefix(3)))
    }
}
