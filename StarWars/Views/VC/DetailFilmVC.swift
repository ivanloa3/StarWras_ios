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
    
    var time : Int!
    
    @IBOutlet weak var gifView: UIImageView!

    @IBOutlet weak var curtainView: UIView!
    @IBOutlet weak var label_nombreDirector: UILabel!
    @IBOutlet weak var ta_descripcion: UITextView!
    @IBOutlet weak var label_relazeDate: UILabel!
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

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func setValues(){
        label_nombreDirector.text = film.getDirector()
        ta_descripcion.text = film.getOpeningCrawl()
        label_relazeDate.text = "Relase Date: \(film.getRelease_date())"
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
    
    
    
    
}
