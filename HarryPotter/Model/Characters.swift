//
//  Characters.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation

//CHARACTER PROPERTIES
struct Characters: Decodable {
    
    let name: String
    let species: String
    let school: String
    let house: String
    let ministryOfMagic: Bool
    let orderOfThePhoenix: Bool
    let dumbledoresArmy: Bool
    let deathEater: Bool
    let bloodStatus: String
    
}

