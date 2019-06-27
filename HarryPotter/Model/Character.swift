//
//  Characters.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation

//struct CharactersArray: Decodable {
//    
//    let characters: [Character]
//    
//}

//CHARACTER PROPERTIES
struct Character: Decodable {
    
    let name: String
    let species: String
    let role: String
    let school: String
    let house: String
    let ministryOfMagic: Bool
    let orderOfThePhoenix: Bool
    let dumbledoresArmy: Bool
    let deathEater: Bool
    let bloodStatus: String
    
}

