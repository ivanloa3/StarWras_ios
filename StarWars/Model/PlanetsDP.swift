//
//  PlanetsDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class PlanetsDP{
    
    private var name : String!
    private var rotation_period : String!
    private var orbital_period : String!
    private var diameter : String!
    private var climate : String!
    private var gravity : String!
    private var terrain : String!
    private var surface_water : String!
    private var population : String!
    
    init (planet : Any){
        
        let dictionary = planet as! [String:Any]
        
        self.name = dictionary["name"] as! String
        self.rotation_period = dictionary["rotation_period"] as! String
        self.orbital_period = dictionary["orbital_period"] as! String
        self.diameter = dictionary["diameter"] as! String
        self.climate = dictionary["climate"] as! String
        self.gravity = dictionary["gravity"] as! String
        self.terrain = dictionary["terrain"] as! String
        self.surface_water = dictionary["surface_water"] as! String
        self.population = dictionary["population"] as! String
    }
    
    func getName() -> String {
        return self.name!
    }
    
    func getRotationPeriod() -> String{
        return self.rotation_period!
    }
    
    func getOrbitalPeriod() -> String{
        return self.orbital_period!
    }
    
    func getDiameter() -> String{
        return self.diameter!
    }
    
    func getClimate() -> String{
        return self.climate!
    }
    
    func getGravity() -> String{
        return self.gravity!
    }
    
    func getTerrain() -> String{
        return self.terrain!
    }
    
    func getSurfaceWater() -> String{
        return self.surface_water!
    }
    
    func getPopulation() -> String{
        return self.population!
    }
}
