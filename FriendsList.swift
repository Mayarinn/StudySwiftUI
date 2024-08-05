//
//  FriendsList.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/1/24.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        List {
            ForEach(userResponse) { user in
                Cell(user: user)
                    .lineLimit(nil)
            }
        }
        .navigationTitle("Teachers")
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
