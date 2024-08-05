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
        VStack(spacing: 20.0) {
            mainImage(object: object)
            Text(object.name)
                .lineLimit(nil)
                .font(.title)
            lessonsAndStudents(object: object)
            description(object: object)
                .padding()
            Spacer()
            
        }
    }
    
struct mainImage: View {
        
    var object: ProductsResponse
    
    var body: some View {
        if (object.category.rawValue == Category.courses.rawValue) {
            Image(object.image)
                .resizable()
                .frame(width: 170, height: 170)
                .border(Color.gray, width: 3)
                .cornerRadius(30)
                .shadow(radius: 10)
        } else {
            Image(object.image)
                .resizable()
                .frame(width: 170, height: 190)
                .border(Color.gray, width: 3)
                .cornerRadius(30)
                .shadow(radius: 10)
        }
    }
}
    
struct lessonsAndStudents: View {
        
    var object: ProductsResponse
        
    var body: some View {
        HStack(spacing: 50.0) {
            VStack {
                Text("\(object.lessons)")
                    .font(.title)
                Text("Lessons")
                    .font(.body)
                    .fontWeight(.medium)
                
            }
            VStack {
                Text("\(object.students)")
                    .font(.title)
                Text("Students")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
            
}
    
struct description: View {
    
    var object: ProductsResponse

    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text("Description")
                .font(.title)
            Text(object.description)
                .lineLimit(nil)
        }
    }
}
    
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[2])
    }
}
