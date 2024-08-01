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
        VStack(alignment: .leading, spacing: 10) {
            Text(categoryName).font(.headline)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(item) { item in
                        Text(item.name)
                    }
                }
            }.frame(height: 190)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, item: Array(materialResponse.prefix(3)))
    }
}
