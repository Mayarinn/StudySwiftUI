//
//  TopView.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct TopView: View {
    var user: UserResponse
    var body: some View {
        HStack(spacing: 15.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 6.0) {
                Text(user.name)
                    .font(.title)
                Text(user.email)
                HStack {
                    Text(user.likes+" ")
                    Image("like")
                        .resizable()
                        .frame(width: 18, height: 18)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[2])
    }
}
