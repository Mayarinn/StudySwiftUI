//
//  AlertsAndActions.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/5/24.
//

import SwiftUI

struct AlertsAndActions: View {
    
    @State private var isShowingConfirmation = false
    
    var object: ProductsResponse
    
    var body: some View {
        Button {
            isShowingConfirmation = true
        } label: {
            Label("Delete from \(object.category.rawValue)", systemImage: "trash.fill")
        }
        .buttonStyle(.bordered)
        .tint(.red)
        .controlSize(.regular)
        
        
        .confirmationDialog("Delete from \(object.category.rawValue)",
                            isPresented: $isShowingConfirmation,
                            titleVisibility: .visible,
                            actions: {
            Button(role: .destructive, action: {print("Item deleted")}, label: {Text("Delete")})
            Button(role: .destructive, action: {print("Other Item deleted")}, label: {Text("Other Item Delete")})
                                    },
            message: {Text("Do you want to delete from course?")
            }
        )
        
    }
}

struct AlertsAndActions_Previews: PreviewProvider {
    static var previews: some View {
        AlertsAndActions(object: materialResponse[1])
    }
}
