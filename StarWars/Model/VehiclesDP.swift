//
//  VehiclesDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class VehiclesDP{
    
    var name : String!
    var model : String!
    var manufacturer : String!
    var cost_in_credits : String!
    var length : String!
    var max_atmosphering_speed : String!
    var crew : String!
    var passengers : String!
    var cargo_capacity : String!
    var consumables : String!
    var vehicle_class : String!
    
    init(vehicle : Any) {
        let dictionary = vehicle as! [String:Any]
        
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
        self.vehicle_class = dictionary["vehicle_class"] as! String
        
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
    
    func getVehicle_class() -> String{
        return self.vehicle_class!
    }
}
