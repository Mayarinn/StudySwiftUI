//
//  ProductRow.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/1/24.
//

import SwiftUI

struct ProductRow: View {
    
    var categoryName: String
    var objects: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(categoryName).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(objects) { object in
                        NavigationLink(destination: DetailScreen(object: object)) {
                            ProductItem(object: object)
                        }
                    }
                }
            }.frame(height: 190)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, objects: Array(materialResponse.prefix(3)))
    }
}
