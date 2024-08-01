//
//  UserResponse.swift
//  SwiftUIFirstDemo
//
//  Created on 05.06.2019.
//

import Foundation
import UIKit
import SwiftUI

struct UserResponse: Hashable, Codable, Identifiable {
    var id: Int
    
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}

