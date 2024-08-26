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
                title: Text("Alert"),
                message: Text("This is an alert"),
                primaryButton: .default(
                    Text("OK"),
                    action: { } //Hide alert
                ),
                secondaryButton: .destructive(
                    Text("NOT OK"),
                    action: { }//Keep alert
                )
            )
        }
        
        
//        .alert(isPresented: $isShowingValueAlert) {
//            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
//        }
        
        
//        .alert("Add student name", isPresented: $isShowingValueAlert, actions: {
//            TextField("Value", text: $valueString)
//            Button(action: { print("Item deleted") }, label: { Text("Submit") } )
//            Button(role: .cancel, action: { }, label: { Text("Cancel") } )
//        }, message: {
//            Text("Enter student's name")
//        })
        
    }
}

struct AlertsAndActions_Previews: PreviewProvider {
    static var previews: some View {
        AlertsAndActions(object: materialResponse[1])
    }
}
