//
//  FilmsDP.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class FilmsDP {
    
    private var title : String!
    private var episode_id : Int!
    private var opening_crawl : String!
    private var director : String!
    private var producer : String!
    private var release_date : String!
    private var charactersURL : [String]!
    private var planetsURL : [String]!
    private var vehiclesURL : [String]!
    private var starshipsURL : [String]!
    private var speciesURL : [String]!
    private var created : String!
    private var edited : String!
    
    
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
        self.starshipsURL = dictionary["starships"] as! [String]
        self.speciesURL = dictionary["species"] as! [String]
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
        
        var splitCreated = self.created.split(separator: "T")
        let nCreated = splitCreated[0]
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd"
        
        let date = formatter.date(from: String(nCreated))
        let strCreated = formatter.string(from: date!)
        
        return strCreated
    }
    
    func getEdited() -> String{
        var splitCreated = self.edited.split(separator: "T")
        let nCreated = splitCreated[0]
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd"
        
        let date = formatter.date(from: String(nCreated))
        let strCreated = formatter.string(from: date!)
        
        return strCreated
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
    
    func getStarshipsURL() -> [String]{
        return self.starshipsURL!
    }
    
    func getSpeciesURL() -> [String]{
        return self.speciesURL!
    }
}
