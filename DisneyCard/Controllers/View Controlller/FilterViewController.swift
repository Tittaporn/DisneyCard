//
//  FilterViewController.swift
//  DisneyCard
//
//  Created by Lee McCormick on 1/14/21.
//

import UIKit

// MARK: - Protocol
protocol FilterSelectionDelegate: AnyObject {
    func selectedFaction(faction: String)
}

class FilterViewController: UIViewController {
    
    // MARK: - Properties
    weak var delegate: FilterSelectionDelegate?
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    // MARK: - Actions
    @IBAction func heroButtonTapped(_ sender: Any) {
        delegate?.selectedFaction(faction: "heros")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func villainsButtonTapped(_ sender: Any) {
        delegate?.selectedFaction(faction: "villains")
        dismiss(animated: true, completion: nil)
    }
}
