//
//  CardService.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 24.08.24.
//

import Foundation

struct CardService {
    
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({CardModel(user:$0)})
    }
}
 
