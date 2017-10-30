//
//  PlanetsDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class PlanetsDP{
    
    var name : String!
    
    init (planet : Any){
        
        let dictionary = planet as! [String:Any]
        
        self.name = dictionary["name"] as! String
        
    }
    func getName() -> String {
        return self.name!
    }
    
}
