//
//  AlertsAndActions.swift
//  StudySwiftUI
//
//  Created by Karina Osadchaya on 8/5/24.
//

import SwiftUI

struct AlertsAndActions: View {
    
    @State private var isShowingConfirmation = false
    @State private var isShowingValueAlert = false
    @State private var valueString = ""
    
    var object: ProductsResponse
    
    var body: some View {
        
//MARK: - confirmation dialog
        
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
        
//MARK: - value alert
        
        Button("Enter students name") {
            isShowingValueAlert = true
        }
//        .alert("Add student's name", isPresented: $isShowingValueAlert, actions: {
//            TextField(text: $valueString, label: { Text("Value") } )
//            Button(action: { print("Item deleted") }, label: { Text("Submit") } )
//            Button(role: .cancel, action: { }, label: { Text("Cancel") })
//        }, message: {
//            Text("Enter students name")
//        })
        
        .alert(isPresented: $isShowingValueAlert) {
            Alert (
                title: Text("Return to Homepage"),
                message: Text("Do you want to return to Homepage?"),
                primaryButton: .default(
                    Text("No, stay here"),
                    action: { } //Do nothing
                ),
                secondaryButton: .destructive(
                    Text("Yes, return to Homepage"),
                    action: { }//Move to ContentView()
                )
            )
        }
        
    }
}

struct AlertsAndActions_Previews: PreviewProvider {
    static var previews: some View {
        AlertsAndActions(object: materialResponse[1])
    }
}
