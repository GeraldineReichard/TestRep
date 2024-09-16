//
//  CardModel.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 24.08.24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String {return user.id}
}
