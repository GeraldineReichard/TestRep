//
//  User.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 24.08.24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
