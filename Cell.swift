//
//  Cell.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct Cell: View {
    var user: UserResponse
    var body: some View {
        VStack {
            TopView(user: user)
            Text(user.text)
                .lineLimit(nil)
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
