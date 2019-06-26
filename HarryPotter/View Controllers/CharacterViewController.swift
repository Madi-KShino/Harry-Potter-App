//
//  CharacterViewController.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CharacterController.sharedInstance.fetchCharacters(searchedCharacter: "Harry Potter") { (dict) in
        
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
