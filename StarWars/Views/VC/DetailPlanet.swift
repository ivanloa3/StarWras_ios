//
//  DetailPlanet.swift
//  StarWars
//
//  Created by Ivan Lopez Ansaldo on 11/6/17.
//  Copyright © 2017 Ivan Lopez Ansaldo. All rights reserved.
//

import UIKit

class DetailPlanet : UIViewController {
    
    var planet : PlanetsDP!
    
    @IBOutlet weak var label_rotationPeriod: UILabel!
    @IBOutlet weak var label_orbitalPeriod: UILabel!
    @IBOutlet weak var label_diameter: UILabel!
    @IBOutlet weak var label_climate: UILabel!
    @IBOutlet weak var label_gravity: UILabel!
    @IBOutlet weak var label_terrain: UILabel!
    @IBOutlet weak var label_surfaceWater: UILabel!
    @IBOutlet weak var label_population: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = planet.getName()
        
        setValues()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setValues(){
        
        label_rotationPeriod.text = planet.getRotationPeriod()
        label_orbitalPeriod.text = planet.getOrbitalPeriod()
        label_diameter.text = planet.getDiameter()
        label_climate.text = planet.getClimate()
        label_gravity.text = planet.getGravity()
        label_terrain.text = planet.getTerrain()
        label_surfaceWater.text = planet.getSurfaceWater()
        label_population.text = planet.getPopulation()
        
    }
}
