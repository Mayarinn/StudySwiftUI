//
//  TopView.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6.0) {
                Text("John Doe")
                    .font(.title2)
                HStack {
                    Text("johndoe@mail.com")
                    Image("like")
                        .resizable()
                        .frame(width: 18, height: 18, alignment: .center)
                    Text("12.2K likes")
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
