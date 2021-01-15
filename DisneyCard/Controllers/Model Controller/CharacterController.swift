//
//  CharacterController.swift
//  DisneyCard
//
//  Created by Lee McCormick on 1/14/21.
//

import UIKit

class CharacterController {
    static let heros = [
        Character(name: "Hercules", photo: UIImage(named: "hercules"), faction: "heros"),
        Character(name: "Tarzan", photo: UIImage(named: "tarzan"), faction: "heros"),
        Character(name: "Elsa", photo: UIImage(named: "elsa"), faction: "heros"),
        Character(name: "Anna", photo: UIImage(named: "anna"), faction: "heros"),
        Character(name: "Rapunzel", photo: UIImage(named: "rapunzel"), faction: "heros"),
        Character(name: "Ariel", photo:  UIImage(named: "ariel"), faction: "heros"),
        Character(name: "Jasmine", photo:  UIImage(named:"jasmine"), faction: "heros"),
        Character(name: "Alladin", photo:  UIImage(named:"alladin"), faction: "heros") ]
    
    static let villains = [
        Character(name: "Maleficent", photo:  UIImage(named: "maleficent"), faction: "villains"),
        Character(name: "Ursula", photo:  UIImage(named:"ursula"), faction: "villains"),
        Character(name: "Jafar", photo:  UIImage(named:"jafar"), faction: "villains"),
        Character(name: "Hook", photo:  UIImage(named:"hook"), faction: "villains"),
        Character(name: "Scar", photo:  UIImage(named:"scar"), faction: "villains"),
        Character(name: "Yzma", photo:  UIImage(named:"yzma"), faction: "villains"),
        Character(name: "Hades", photo:  UIImage(named:"hades"), faction: "villains"),
        Character(name: "Cruella", photo:  UIImage(named:"cruella"), faction: "villains") ]
}
