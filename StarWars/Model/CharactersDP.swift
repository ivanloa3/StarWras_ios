//
//  CharactersDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class CharactersDP {
    
    var name : String!
    
    init (character : Any){
        
        let dictionary = character as! [String:Any]
        
        self.name = dictionary["name"] as! String
        
    }
    
    func getName() -> String{
        return self.name!
    }
    
    
}
