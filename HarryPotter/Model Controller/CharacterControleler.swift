//
//  CharacterControleler.swift
//  HarryPotter
//
//  Created by Madison Kaori Shino on 6/26/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation
import UIKit

class CharacterController {
    
    //SINGLETON
    static let sharedInstance = CharacterController()
    
    //BASE URL
    let baseURL = URL(string: "https://www.potterapi.com/v1/")
    
    //FETCH CHARACTERS
    func fetchCharacters(searchedCharacter: String, completion: @escaping(([Character]?) -> Void )) {
        
        //UNWRAPPED URL TO USE IN FUNCTION
        guard let unwrappedURL = baseURL else { completion(nil); return }
        
        //COMPLETE URL
        let urlWithPathComponent = unwrappedURL.appendingPathComponent("characters")
        var urlComponents = URLComponents(url: urlWithPathComponent, resolvingAgainstBaseURL: true)
        let keyQueryComponent = URLQueryItem(name: "key", value: "$2a$10$n0dbs6bNOa9h//w87pi51el5jGePW2aOvbq703Oj8lNaNEBQliP/2")
        let searchQueryComponent = URLQueryItem(name: "name", value: searchedCharacter)
        urlComponents?.queryItems = [keyQueryComponent, searchQueryComponent]
        guard let finalURL = urlComponents?.url else { return }
        
        
        //RETRIEVE DATA & DECODE
        URLSession.shared.dataTask(with: finalURL) { (data, _, error) in
            if let error = error {
                print("Oops! \(error.localizedDescription)")
                completion(nil)
                return
            }
            if let data = data {
                do {
                    let characterArray = try JSONDecoder().decode([Character].self, from: data)
                    completion(characterArray)
                } catch {
                    print(error)
                    completion(nil)
                    return
                }
            }
        }
        .resume()
    }
}
