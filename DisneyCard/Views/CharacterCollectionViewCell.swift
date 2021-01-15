//
//  CharacterCollectionViewCell.swift
//  DisneyCard
//
//  Created by Lee McCormick on 1/14/21.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var charImageView: UIImageView!
    
    // MARK: - Function
    func displayImage(character: Character) {
        charImageView.contentMode = .scaleAspectFit
        charImageView.image = character.photo
    }
}
