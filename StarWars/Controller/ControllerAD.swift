//
//  ControllerAD.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/27/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class ControllerAD {
    
    var indexMovies : IndexMoviesTVC!
    var detalleFilm : DetailFilmVC!
    
    var listUrls : [String:String]!
    var films : [FilmsDP] = [FilmsDP()]
    
    func getData() {
        
        guard let url = URL(string: "https://swapi.co/api/") else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        session.dataTask(with: request) {(data, response, error) in
            if let response = response{
                print("Response: \(response)")
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    //print("JSON: \(json)")
                    
                    let dictionary = json as? [String : String]
                    
                    let films : String = dictionary!["films"]! as String
                    let people : String = dictionary!["people"]! as String
                    let planets : String = dictionary!["planets"]! as String
                    let species :String = dictionary!["species"]! as String
                    let starships :String = dictionary!["starships"]! as String
                    let vehicles : String = dictionary!["vehicles"]! as String
                    
                    
                    self.listUrls = ["films":films,
                                "people":people,
                                "planets":planets,
                                "species":species,
                                "starships":starships,
                                "vehicles":vehicles]
                    
                    self.getFilms()

                }catch{
                    print("Error: \(error)")
                }
            }
        }.resume()
        
    }
    
    func getFilms() {
    
        self.films.removeAll()
        let filmsUrl : String = self.listUrls["films"]! as String
        
        guard let url = URL(string: filmsUrl) else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        session.dataTask(with: request) {(data, response, error) in
            if let response = response{
                print("Response: \(response)")
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    
                    let dictionary = json as! [String : Any]
                    
                    
                    let results : [Any] = dictionary["results"] as! [Any]
                    
                    for i in 0 ... results.count-1{
                        let myFilm = FilmsDP(film: results[i])
                        
                        self.films.insert(myFilm, at: i)
                    }

                    
                    DispatchQueue.main.async{
                        
                        self.indexMovies.films = self.films
                        self.indexMovies.tableView.reloadData()
                    }
                    
                    //print("JSON: \(json)")
                    
                }catch{
                    print("Error: \(error)")
                }
            }
        }.resume()
    }
    
    func getCharacter(characterURL : String){
        
        guard let url = URL(string: characterURL) else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        session.dataTask(with: request) {(data, response, error) in
            if let response = response{
                print("Response: \(response)")
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    
                    let character = CharactersDP(character : json)
                    
                   
                    DispatchQueue.main.async{
                        
                        self.detalleFilm.charcaters.insert(character, at: self.detalleFilm.charcaters.count)
                        
                    }
                    
                    //print("JSON: \(json)")
                    
                }catch{
                    print("Error: \(error)")
                }
            }
        }.resume()
    }
    
    func getVehicle(vehicleURL : String){
        guard let url = URL(string: vehicleURL) else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        session.dataTask(with: request) {(data, response, error) in
            if let response = response{
                print("Response: \(response)")
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    
                    let vehicle = VehiclesDP(vehicle : json)
                    
                    
                    DispatchQueue.main.async{
                        
                        self.detalleFilm.vehicles.insert(vehicle, at: self.detalleFilm.vehicles.count)
                        
                    }
                    
                    //print("JSON: \(json)")
                    
                }catch{
                    print("Error: \(error)")
                }
            }
            }.resume()
    }
    
    func getPlanet(planetURL : String){
        guard let url = URL(string: planetURL) else { return }
        
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        
        session.dataTask(with: request) {(data, response, error) in
            if let response = response{
                print("Response: \(response)")
            }
            
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    
                    let planet = PlanetsDP(planet : json)
                    
                    
                    DispatchQueue.main.async{
                        
                        self.detalleFilm.planets.insert(planet, at: self.detalleFilm.planets.count)
                        
                    }
                    
                    //print("JSON: \(json)")
                    
                }catch{
                    print("Error: \(error)")
                }
            }
            }.resume()
    }
    
}
