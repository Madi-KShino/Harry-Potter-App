//
//  SearchViewController.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    //OUTLETS
    @IBOutlet weak var characterSearchBar: UISearchBar!
    
    //LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // NAVIGATION
    @IBAction func searchButtonTapped(_ searchBar: UISearchBar) {
        
        print("searchTapped")
        
//        //CALL DATA
//        CharacterController.sharedInstance.fetchCharacters(searchedCharacter: searchText) { (character) in
//            guard let unwrappedCharacter = character else { return }
//            self.updateView(character: unwrappedCharacter)
//        }
//
//        performSegue(withIdentifier: "toCharacterDetailView", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCharacterDetailView", let nameEntered = characterSearchBar.text {
            let destination = segue.destination as? CharacterViewController
            destination?.nameEntered = nameEntered
            
        }
    }
}

extension UISearchBar {
    var textField: UITextField? {
        return subviews.first?.subviews.compactMap { $0 as? UITextField }.first
    }
}
