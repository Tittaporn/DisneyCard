//
//  Character.swift
//  DisneyCard
//
//  Created by Lee McCormick on 1/14/21.
//

import UIKit

class Character {
    let name: String
    let photo: UIImage?
    let faction: String
    
    init(name: String, photo: UIImage?, faction: String) {
        self.name = name
        self.photo = photo
        self.faction = faction
    }
}

extension Character: Equatable {
    static func == (lhs: Character, rhs: Character) -> Bool {
        lhs.name == rhs.name && lhs.photo == rhs.photo && lhs.faction == rhs.faction
    }
    
    
}
