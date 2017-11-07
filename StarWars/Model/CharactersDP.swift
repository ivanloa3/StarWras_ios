//
//  CharactersDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class CharactersDP {
    
    private var name : String!
    private var height : String!
    private var mass : String!
    private var hair_color : String!
    private var skin_color : String!
    private var eye_color : String!
    private var birth_year : String!
    private var gender : String!
    
    init (character : Any){
        
        let dictionary = character as! [String:Any]
        
        self.name = dictionary["name"] as! String
        self.height = dictionary["height"] as! String
        self.mass = dictionary["mass"] as! String
        self.hair_color = dictionary["hair_color"] as! String
        self.skin_color = dictionary["skin_color"] as! String
        self.eye_color = dictionary["eye_color"] as! String
        self.birth_year = dictionary["birth_year"] as! String
        self.gender = dictionary["gender"] as! String
        
    }
    
    func getName() -> String{
        return self.name!
    }
    
    func getHeight() -> String{
        return self.height!
    }
    
    func getMass() -> String{
        return self.mass!
    }
    
    func getHairColor() -> String{
        return self.hair_color!
    }
    
    func getSkinColor() -> String{
        return self.skin_color!
    }
    
    func getEyeColor() -> String{
        return self.eye_color!
    }
    
    func getBirthYear() -> String{
        return self.birth_year!
    }
    
    func getGender() -> String{
        return self.gender!
    }
}
