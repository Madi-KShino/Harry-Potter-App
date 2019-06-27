//
//  CharacterViewController.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    var nameEntered: String?
    
    //OUTLETS
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var ministryLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var armyLabel: UILabel!
    @IBOutlet weak var deathLabel: UILabel!
    
    //LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let nameEntered = nameEntered else { return }
        CharacterController.sharedInstance.fetchCharacters(searchedCharacter: nameEntered) { (characters) in
            guard let unwrappedCharacter = characters?.first else { return }
            self.updateView(character: unwrappedCharacter)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //METHODS
    func updateView(character: Character) {
        
        DispatchQueue.main.async {
            self.nameLabel.text = character.name
            self.speciesLabel.text = character.species
            self.roleLabel.text = character.role
            self.schoolLabel.text = character.school
            self.houseLabel.text = character.house
            self.ministryLabel.text = "\(character.ministryOfMagic)"
            self.orderLabel.text = "\(character.orderOfThePhoenix)"
            self.armyLabel.text = "\(character.dumbledoresArmy)"
            self.deathLabel.text = "\(character.deathEater)"
        }
    }
}

//PROTOCOLS
//extension CharacterViewController: UISearchBarDelegate {
//    
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        
//        //CALL DATA
//        CharacterController.sharedInstance.fetchCharacters(searchedCharacter: searchText) { (character) in
//            guard let unwrappedCharacter = character else { return }
//            self.updateView(character: unwrappedCharacter)
//        }
//    }
//}


