//
//  DetailScreen.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/2/24.
//

import SwiftUI

struct DetailScreen: View {
    
    var object: ProductsResponse
    
    var body: some View {
        Text(object.name)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[2])
    }
}
