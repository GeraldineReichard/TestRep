//
//  MockData.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 24.08.24.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 38,
            profileImageURLs: [
                "meganfox1",
                "meganfox2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "David Beckham",
            age: 49,
            profileImageURLs: [
                "davidbeckham-1",
                "davidbeckham-2",
                "davidbeckham-3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Brad Pitt",
            age: 60,
            profileImageURLs: [
                "bradpitt-1",
                "bradpitt-2"
            ]
        ),
    
    
    
    ]
}

