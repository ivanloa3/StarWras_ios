//
//  SpeciesDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class SpeciesDP {
    
    private var name : String!
    private var classification : String!
    private var designation : String!
    private var average_height : String!
    private var skin_colors : String!
    private var hair_colors : String!
    private var eye_colors : String!
    private var average_lifespan : String!
    private var language : String!
    
    init(specie : Any) {
        let dictionary = specie as! [String:Any]
        
        self.name = dictionary["name"] as! String
        self.classification = dictionary["classification"] as! String
        self.designation = dictionary["designation"] as! String
        self.average_height = dictionary["average_height"] as! String
        self.skin_colors = dictionary["skin_colors"] as! String
        self.hair_colors = dictionary["hair_colors"] as! String
        self.eye_colors = dictionary ["eye_colors"] as! String
        self.average_lifespan = dictionary ["average_lifespan"] as! String
        self.language = dictionary ["language"] as! String
    }
    
    func getName() -> String{
        return self.name!
    }
    
    func getClassification() -> String{
        return self.classification!
    }
    
    func getDesignation() -> String{
        return self.designation!
    }
    
    func getAverage_height() -> String{
        return self.average_height!
    }
    
    func getSkin_colors() -> String{
        return self.skin_colors!
    }
    
    func getHair_colors() -> String{
        return self.hair_colors!
    }
    
    func getEye_colors() -> String{
        return self.eye_colors!
    }
    
    func getAverage_lifespan() -> String{
        return self.average_lifespan!
    }
    
    func getLanguage() -> String{
        return self.language!
    }
}
