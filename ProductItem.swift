//
//  ProductItem.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/1/24.
//

import SwiftUI

struct ProductItem: View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            if object.category == Category.courses {
                Image(object.image)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 170, height: 170)
            } else {
                Image(object.image)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 170, height: 190)
            }
        }.padding(.leading, 15)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[1])
    }
}
