//
//  CardCollectionViewController.swift
//  DisneyCard
//
//  Created by Lee McCormick on 1/14/21.
//

import UIKit

class CardCollectionViewController: UICollectionViewController {
    
    // MARK: - Properties
    var displayedCharecters: [Character] = []
    var targetCharecter: Character?
    var selectedFaction = "heros"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shufferCharacter(faction: selectedFaction)
    }
    
    // MARK: - Helper Fuctions
    func shufferCharacter(faction: String) {
        if faction == "heros" {
            let heroGroup = CharacterController.heros.prefix(5)
            displayedCharecters = Array(heroGroup)
            targetCharecter = CharacterController.heros.randomElement()
        } else  {
            let villainGroup =  CharacterController.villains.prefix(5)
            displayedCharecters = Array(villainGroup)
            targetCharecter = CharacterController.villains.randomElement()
        }
        updateView()
    }
    
    func updateView() {
        guard let character = targetCharecter else {return}
        displayedCharecters.append(character)
        title = "Look for \(character.name) and pick the photo."
        collectionView.reloadData()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFilterVC" {
            let destination = segue.destination as? FilterViewController
            
            destination?.delegate = self
        }
    }
    
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayedCharecters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as? CharacterCollectionViewCell else {return UICollectionViewCell()}
        
        let character = displayedCharecters[indexPath.row]
        
        // Configure the cell
        cell.displayImage(character: character)
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let charater = displayedCharecters[indexPath.row]
        presentAlert(charater: charater)
    }
    
    // MARK: - Alert Function
    func presentAlert(charater: Character) {
        
        let success = charater == targetCharecter
        let  alertController = UIAlertController(title: success ? "Good Job." : "Try Again.", message: success ? "You are genius." : "Better luck next time.", preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "Done", style: .cancel)
        
        let shuffleAction = UIAlertAction(title: "Shuffle", style: .default) { (_) in
            self.shufferCharacter(faction: self.selectedFaction)
        }
        
        alertController.addAction(doneAction)
        if success {
            alertController.addAction(shuffleAction)
        }
        present(alertController, animated: true, completion: nil)
    }
    
}

// MARK: - Extension UICollectionViewDelegateFlowLayout
extension CardCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        let heigth = view.frame.height / 3
        return CGSize(width: width, height: heigth)
    }
}

// MARK: - Extension FilterSelectionDelegate
extension CardCollectionViewController: FilterSelectionDelegate {
    func selectedFaction(faction: String) {
        selectedFaction = faction
        shufferCharacter(faction: faction)
    }
}
