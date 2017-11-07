//
//  StarshipsDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class StarshipsDP {
    
    private var name : String!
    private var model : String!
    private var manufacturer : String!
    private var cost_in_credits : String!
    private var length : String!
    private var max_atmosphering_speed : String!
    private var crew : String!
    private var passengers : String!
    private var cargo_capacity : String!
    private var consumables : String!
    private var hyperdrive_rating : String!
    private var MGLT : String!
    private var starship_class : String!
    
    init(starship : Any) {
        let dictionary = starship as! [String:Any]
        
        self.name = dictionary["name"] as! String
        self.model = dictionary["model"] as! String
        self.manufacturer = dictionary["manufacturer"] as! String
        self.cost_in_credits = dictionary["cost_in_credits"] as! String
        self.length = dictionary["length"] as! String
        self.max_atmosphering_speed = dictionary["max_atmosphering_speed"] as! String
        self.crew = dictionary["crew"] as! String
        self.passengers = dictionary["passengers"] as! String
        self.cargo_capacity = dictionary["cargo_capacity"] as! String
        self.consumables = dictionary["consumables"] as! String
        self.hyperdrive_rating = dictionary["hyperdrive_rating"] as! String
        self.MGLT = dictionary["MGLT"] as! String
        self.starship_class = dictionary["starship_class"] as! String
        
    }
    
    func getName() -> String{
        return self.name!
    }
    
    func getModel() -> String{
        return self.model!
    }
    
    func getManufacturer() -> String{
        return self.manufacturer!
    }
    
    func getCost_in_credits() -> String{
        return self.cost_in_credits!
    }
    
    func getLength() -> String{
        return self.length!
    }
    
    func getMax_atmosphering_speed() -> String{
        return self.max_atmosphering_speed!
    }
    
    func getCrew() -> String{
        return self.crew!
    }
    
    func getPassenger() -> String{
        return self.passengers!
    }
    
    func getCargo_capacity() -> String{
        return self.cargo_capacity!
    }
    
    func getConsumables() -> String{
        return self.consumables!
    }
    
    func getHyperdrive_rating() -> String{
        return self.hyperdrive_rating!
    }
    
    func getMGLT() -> String{
        return self.MGLT!
    }
    
    func getStarship_class() -> String{
        return self.starship_class!
    }
    
}
