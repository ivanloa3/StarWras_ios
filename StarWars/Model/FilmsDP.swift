//
//  FilmsDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

class FilmsDP {
    
    var title : String!
    var episode_id : Int!
    var opening_crawl : String!
    var director : String!
    var producer : String!
    var release_date : String!
    var charactersURL : [String]!
    var planetsURL : [String]!
    var vehiclesURL : [String]!
    var created : String!
    var edited : String!
    
    
    init (){}
    
    init (film : Any){
        
        let dictionary = film as! [String:Any]
        
        self.title = dictionary["title"] as! String
        self.episode_id = dictionary["episode_id"] as! Int
        self.opening_crawl = dictionary["opening_crawl"] as! String
        self.director = dictionary["director"] as! String
        self.producer = dictionary["producer"] as! String
        self.release_date = dictionary["release_date"] as! String
        self.created = dictionary["created"] as! String
        self.edited = dictionary["edited"] as! String
        
        self.charactersURL = dictionary["characters"] as! [String]
        self.vehiclesURL = dictionary["vehicles"] as! [String]
        self.planetsURL = dictionary["planets"] as! [String]
    }
    
    func getTitle() -> String{
        return self.title!
    }
    
    func getEpisodeId() -> Int{
        return self.episode_id!
    }
    
    func getOpeningCrawl() -> String{
        return self.opening_crawl!
    }
    
    func getDirector() -> String{
        return self.director!
    }
    
    func getProducer() -> String{
        return self.producer!
    }
    
    func getRelease_date() -> String{
        return self.release_date!
    }
    
    func getCreated() -> String{
        return self.created!
    }
    
    func getEdited() -> String{
        return self.edited!
    }
    
    func getCharacterURL() -> [String]{
        return self.charactersURL!
    }
    
    func getVehiclesURL() -> [String]{
        return self.vehiclesURL!
    }
    
    func getPlanetsURL() -> [String]{
        return self.planetsURL!
    }
}
