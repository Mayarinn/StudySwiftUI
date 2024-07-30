//
//  Cell.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 7/30/24.
//

import SwiftUI

struct Cell: View {
    var body: some View {
        VStack(alignment: .leading) {
            TopView()
            Text("Do you want to download free song for ipod? If so, reading this article could save you from getting in to a lot of trouble! Downloading music to your Ipod has more than one pitfall associated with it, and this article will tell you the best way to download free song for Ipod.")
                .lineLimit(nil)
        }.padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
