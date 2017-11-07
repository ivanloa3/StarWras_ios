//
//  DetailFilmVC.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 10/29/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailFilmVC : UIViewController {
    
    var film : FilmsDP!
    var charcaters : [CharactersDP] = []
    var vehicles : [VehiclesDP] = []
    var planets : [PlanetsDP] = []
    var starships : [StarshipsDP] = []
    var species : [SpeciesDP] = []
    
    var time : Int!
    
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var curtainView: UIView!
    
    @IBOutlet weak var labael_episode: UILabel!
    @IBOutlet weak var label_nombreDirector: UILabel!
    @IBOutlet weak var label_producer: UILabel!
    
    @IBOutlet weak var ta_descripcion: UITextView!
    
    @IBOutlet weak var label_releaseDate: UILabel!
    
    var timer = Timer()
    
    @objc func action(){
        time = time + 1
        
        if time > 2{
            timer.invalidate()
            curtainView.alpha = 0
            gifView.alpha = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(DetailFilmVC.action), userInfo: nil, repeats: true)
        
        gifView.loadGif(name: "loading")
        
        self.navigationItem.title = film.getTitle()
        
        setValues()
        
        let controller = ControllerAD()
        controller.detalleFilm = self
        let charactersURL = film.getCharacterURL()
        let vehiclesURL = film.getVehiclesURL()
        let planetsURL = film.getPlanetsURL()
        let starshipsURL = film.getStarshipsURL()
        let speciesURL = film.getSpeciesURL()
        
        print("character: \(charactersURL.count)")
        print("vehicles: \(vehiclesURL.count)")
        print("planets: \(planetsURL.count)")
        
        if charactersURL.count > 0{
            for i in 0...charactersURL.count-1{
                controller.getCharacter(characterURL: charactersURL[i])
            }
        }
        
        if vehiclesURL.count > 0{
            for i in 0...vehiclesURL.count-1{
                controller.getVehicle(vehicleURL: vehiclesURL[i])
            }
        }
            
        
        if planetsURL.count > 0{
            for i in 0...planetsURL.count-1{
                controller.getPlanet(planetURL: planetsURL[i])
            }
        }
        
        if starshipsURL.count > 0{
            for i in 0...starshipsURL.count-1{
                controller.getStarship(starshipURL: starshipsURL[i])
            }
        }
        
        if speciesURL.count > 0{
            for i in 0...speciesURL.count-1{
                controller.getSpecie(specieURL: speciesURL[i])
            }
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setValues(){
        labael_episode.text = "\(film.getEpisodeId())"
        label_nombreDirector.text = film.getDirector()
        label_producer.text = film.getProducer()
        label_releaseDate.text = "Release Date: \(film.getRelease_date())"
        ta_descripcion.text = film.getOpeningCrawl()
        
        //label_relazeDate.text = "Relase Date: \(film.getRelease_date())"
    }
    
    @IBAction func bCharacters(_ sender: Any) {
        let charactersTVC = self.storyboard?.instantiateViewController(withIdentifier: "CharacterTVC") as! CharacterTVC
        
        charactersTVC.title_episode = film.getTitle()
        charactersTVC.characters = self.charcaters
        
        self.navigationController?.pushViewController(charactersTVC, animated: true)
        
    }
    
    @IBAction func bVehicles(_ sender: Any) {
        let vehiclesCVC = self.storyboard?.instantiateViewController(withIdentifier: "NaveCVC") as! NaveCVC
        
        vehiclesCVC.title_episode = film.getTitle()
        vehiclesCVC.vehicles = self.vehicles
        
        self.navigationController?.pushViewController(vehiclesCVC, animated: true)
        
    }
    
    @IBAction func bPlanets(_ sender: Any) {
        
        let planetsTVC = self.storyboard?.instantiateViewController(withIdentifier: "PlanetTVC") as! PlanetTVC
        
        planetsTVC.title_episode = film.getTitle()
        planetsTVC.planets = self.planets
        
        self.navigationController?.pushViewController(planetsTVC, animated: true)
        
    }
    
    @IBAction func bStarships(_ sender: Any) {
        let starshipsCVC = self.storyboard?.instantiateViewController(withIdentifier: "StarshipCVC") as! StarshipCVC
        
        starshipsCVC.title_episode = film.getTitle()
        starshipsCVC.starships = self.starships
        
        self.navigationController?.pushViewController(starshipsCVC, animated: true)
    }
    
    @IBAction func bSpecies(_ sender: Any) {
        let speciesTVC = self.storyboard?.instantiateViewController(withIdentifier: "SpeciesTVC") as! SpeciesTVC
        
        speciesTVC.title_episode = film.getTitle()
        speciesTVC.species = self.species
        
        self.navigationController?.pushViewController(speciesTVC, animated: true)
    }
    
    
}
